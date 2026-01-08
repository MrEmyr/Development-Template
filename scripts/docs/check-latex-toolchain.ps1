<#
LaTeX Toolchain Check (Windows)
-------------------------------

Purpose:
- Quick verification that TeX Live commands are available on PATH in the current shell (including Cursor terminals).

Security notes:
- This script does not accept external input and does not construct file paths from user-provided values.
- It only executes fixed, known commands to print version information.
#>

Set-StrictMode -Version Latest

$commands = @(
  "pdflatex",
  "lualatex",
  "xelatex",
  "latexmk",
  "kpsewhich",
  "pandoc"
)

Write-Host "Checking LaTeX toolchain availability..." -ForegroundColor Cyan
Write-Host "Current PowerShell: $($PSVersionTable.PSVersion)" -ForegroundColor DarkGray
Write-Host ""

foreach ($cmd in $commands) {
  $resolved = Get-Command $cmd -ErrorAction SilentlyContinue

  if (-not $resolved) {
    Write-Host ("[MISSING] {0} (not found on PATH)" -f $cmd) -ForegroundColor Yellow
    continue
  }

  Write-Host ("[OK]      {0} -> {1}" -f $cmd, $resolved.Source) -ForegroundColor Green

  # Print version if possible (some commands write version to stderr; capture both).
  try {
    $output = & $cmd --version 2>&1
    if ($output) {
      $firstLine = ($output | Select-Object -First 1)
      Write-Host ("         version: {0}" -f $firstLine) -ForegroundColor DarkGray
    }
  } catch {
    Write-Host ("         version: (could not query --version)") -ForegroundColor DarkGray
  }
}

Write-Host ""
Write-Host "Done. If pdflatex/latexmk are missing, restart Cursor after installing TeX Live and ensure TeX Live's bin\\windows is on PATH." -ForegroundColor Cyan

