<#
.SYNOPSIS
Build PDFs from Markdown using Pandoc + LaTeX (Windows-first).

.EXAMPLE
pwsh scripts/docs/build-pdf.ps1 -InputFiles "Development Rules&References/Code Development Rules/Code Based Solution - Development-Rules.md"

.EXAMPLE
pwsh scripts/docs/build-pdf.ps1 -InputFiles .\\path\\to\\doc.md -DryRun
#>

param(
  [Parameter(Mandatory = $true)]
  [string[]] $InputFiles,

  [string] $OutputDir = "Documentation/build",

  # Prefer lualatex for broad Unicode support on Windows.
  [ValidateSet('lualatex','xelatex','pdflatex')]
  [string] $PdfEngine = 'lualatex',

  [switch] $DryRun
)

. "$PSScriptRoot/_common.ps1"

$repoRoot = Resolve-RepoRoot
Assert-ToolOnPath 'pandoc'

$resolvedInputs = Normalize-InputFiles -InputFiles $InputFiles -RepoRoot $repoRoot
$outDirAbs = if ([System.IO.Path]::IsPathRooted($OutputDir)) { $OutputDir } else { Join-Path $repoRoot $OutputDir }
Ensure-OutputDir $outDirAbs

# Pandoc LaTeX template (Phase 4 asset)
$pandocTemplate = Join-Path $repoRoot 'Development Rules&References/LaTeX/template/pandoc-template.tex'
$pandocHeader   = Join-Path $repoRoot 'Development Rules&References/LaTeX/macros/macros.tex'
if (-not (Test-Path -LiteralPath $pandocTemplate)) {
  throw "Missing Pandoc template: $pandocTemplate"
}
if (-not (Test-Path -LiteralPath $pandocHeader)) {
  throw "Missing macros include: $pandocHeader"
}

foreach ($inFile in $resolvedInputs) {
  $outFile = Get-OutputPath -OutputDir $outDirAbs -InputFilePath $inFile -ExtensionWithDot '.pdf'

  $pandocArgs = @(
    '--from=gfm',
    '--to=pdf',
    "--pdf-engine=$PdfEngine",
    "--template=$pandocTemplate",
    "--include-in-header=$pandocHeader",
    "--output=$outFile",
    $inFile
  )

  Invoke-Pandoc -PandocArgs $pandocArgs -DryRun:$DryRun
}

Write-Host "PDF build complete. Output: $outDirAbs"

