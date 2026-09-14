#requires -Version 5.1
<#
    LLM_Think-Tank oturum sonu git otomasyonu.
    SessionEnd hook'una baglanir (settings.json). Degisen dosyalari ekler,
    tek commit atar, push dener (madde 5, "Oturum sonu - git").

    ONEMLI KISIT: SessionEnd hook'larinin stdout/stderr'i kullaniciya
    gosterilmez (Claude Code resmi davranisi) ve varsayilan butce 1.5sn'dir
    (bu yuzden settings.json'daki hook girdisine "timeout" verilmeli).
    Bu nedenle push basarisiz olursa hata, .claude/hooks/session-start.ps1
    tarafindan bir sonraki oturum basinda otomatik bildirilmesi icin
    00_Context/_git_push_hata.md dosyasina yazilir (sessizce vazgecilmez).
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = 'SilentlyContinue'
$fence = '```'

function Get-CommitBaslik {
    param([string]$GuncePath)
    if (-not (Test-Path -LiteralPath $GuncePath)) { return $null }
    foreach ($line in Get-Content -LiteralPath $GuncePath -Encoding UTF8 -TotalCount 15) {
        if ($line -match '^##\s+(.+?)\s*$') {
            return $Matches[1].Trim()
        }
    }
    return $null
}

try {
    [Console]::In.ReadToEnd() | Out-Null

    $projectDir = $env:CLAUDE_PROJECT_DIR
    if ([string]::IsNullOrWhiteSpace($projectDir)) {
        $projectDir = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
    }

    Set-Location -LiteralPath $projectDir

    $hataDosyasi = Join-Path $projectDir '00_Context\_git_push_hata.md'

    $degisiklik = git status --porcelain 2>$null
    if ([string]::IsNullOrWhiteSpace($degisiklik)) {
        exit 0
    }

    git add -A 2>$null

    $guncePath = Join-Path $projectDir '00_Context\gunce.md'
    $baslik = Get-CommitBaslik -GuncePath $guncePath
    $tarih = Get-Date -Format 'yyyy-MM-dd HH:mm'
    if ($baslik) {
        $mesaj = "Oturum sonu: $baslik"
    }
    else {
        $mesaj = "Oturum sonu otomatik kayit: $tarih"
    }

    $commitCiktisi = git commit -m $mesaj 2>&1
    $commitKodu = $LASTEXITCODE

    if ($commitKodu -ne 0) {
        $hata = "## Commit hatasi - $tarih`n`n$fence`n$commitCiktisi`n$fence`n"
        Add-Content -LiteralPath $hataDosyasi -Value $hata -Encoding utf8
        exit 0
    }

    $pushCiktisi = git push 2>&1
    $pushKodu = $LASTEXITCODE

    if ($pushKodu -ne 0) {
        $hata = "## Push hatasi - $tarih`n`nCommit basarili, push basarisiz. Elle 'git push' dene.`n`n$fence`n$pushCiktisi`n$fence`n"
        Add-Content -LiteralPath $hataDosyasi -Value $hata -Encoding utf8
    }
    elseif (Test-Path -LiteralPath $hataDosyasi) {
        Remove-Item -LiteralPath $hataDosyasi -Force
    }
}
catch {
}

exit 0
