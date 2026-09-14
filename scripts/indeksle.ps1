#requires -Version 5.1
<#
    Terim/kaynak arama indeksi uretir.
    sozluk.md + teknik_sozluk.md'deki "## Terim" basliklarini ve
    kaynaklar.md'deki tablo satirlarini tarayip tek, alfabetik, hizli
    taranabilir bir indeks dosyasi (00_Context/terim_indeksi.md) yazar.

    Calistirma: powershell -File scripts/indeksle.ps1
    Ne zaman calistirilmali: sozluk.md, teknik_sozluk.md veya kaynaklar.md
    degistikten sonra (elle, ya da istenirse bir hook'a baglanabilir).
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot
$sozlukPath = Join-Path $root '02-Outputs\sozluk.md'
$teknikPath = Join-Path $root '02-Outputs\teknik_sozluk.md'
$kaynaklarPath = Join-Path $root '00_Context\kaynaklar.md'
$outPath = Join-Path $root '00_Context\terim_indeksi.md'

function Get-Headings {
    param([string]$Path, [string]$Etiket)
    if (-not (Test-Path -LiteralPath $Path)) { return @() }
    $rows = @()
    foreach ($line in Get-Content -LiteralPath $Path -Encoding UTF8) {
        if ($line -match '^##\s+(.+?)\s*$') {
            $rows += [PSCustomObject]@{
                Terim = $Matches[1].Trim()
                Tur   = $Etiket
                Dosya = (Resolve-Path -Relative $Path) -replace '\\', '/'
            }
        }
    }
    return $rows
}

function Get-KaynakBasliklari {
    param([string]$Path)
    if (-not (Test-Path -LiteralPath $Path)) { return @() }
    $rows = @()
    foreach ($line in Get-Content -LiteralPath $Path -Encoding UTF8) {
        if ($line -match '^\|\s*([^|]+?)\s*\|\s*([^|]+?)\s*\|') {
            $baslik = $Matches[1].Trim()
            if ($baslik -eq 'Başlık' -or $baslik -match '^-+$' -or [string]::IsNullOrWhiteSpace($baslik)) { continue }
            $rows += [PSCustomObject]@{
                Terim = $baslik
                Tur   = 'kaynak'
                Dosya = 'kaynaklar.md'
            }
        }
    }
    return $rows
}

$all = @()
$all += Get-Headings -Path $sozlukPath -Etiket 'kavramsal'
$all += Get-Headings -Path $teknikPath -Etiket 'teknik'
$all += Get-KaynakBasliklari -Path $kaynaklarPath

$all = $all | Sort-Object -Property Terim -Culture 'tr-TR'

$lines = @()
$lines += '# Terim / Kaynak Indeksi'
$lines += ''
$lines += ('Otomatik uretildi: {0} (scripts/indeksle.ps1). Elle duzenlenmez, yeniden calistirilinca uzerine yazilir.' -f (Get-Date -Format 'yyyy-MM-dd HH:mm'))
$lines += ''
$lines += '| Terim | Tur | Dosya |'
$lines += '|---|---|---|'
foreach ($row in $all) {
    $lines += ('| {0} | {1} | {2} |' -f $row.Terim, $row.Tur, $row.Dosya)
}

Set-Content -LiteralPath $outPath -Value ($lines -join "`n") -Encoding utf8
Write-Output ("Yazildi: {0} ({1} satir)" -f $outPath, $all.Count)
