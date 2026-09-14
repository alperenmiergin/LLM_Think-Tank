#requires -Version 5.1
<#
    LLM_Think-Tank oturum basi otomasyonu.
    hafiza.md'yi okuyup SessionStart hook'unun stdout'una yazar; Claude Code
    resmi olarak "plain-text stdout'u baglama ekler" (docs.claude.com/hooks).
    Boylece madde 5'teki "oturum basinda hafiza.md okunur" kurali manuel
    Read cagrisi olmadan da saglanir.
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = 'SilentlyContinue'

try {
    [Console]::In.ReadToEnd() | Out-Null

    $projectDir = $env:CLAUDE_PROJECT_DIR
    if ([string]::IsNullOrWhiteSpace($projectDir)) {
        $projectDir = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
    }

    $hafizaPath = Join-Path $projectDir '00_Context\hafiza.md'
    if (Test-Path -LiteralPath $hafizaPath) {
        Write-Output "=== hafiza.md (oturum basinda otomatik yuklendi) ==="
        Get-Content -LiteralPath $hafizaPath -Raw
    }

    $hataDosyasi = Join-Path $projectDir '00_Context\_git_push_hata.md'
    if (Test-Path -LiteralPath $hataDosyasi) {
        Write-Output ""
        Write-Output "=== UYARI: onceki oturumun git commit/push'u basarisiz oldu ==="
        Get-Content -LiteralPath $hataDosyasi -Raw
    }
}
catch {
}

exit 0
