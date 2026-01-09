<#
.SYNOPSIS
Build PPTX from Markdown using Pandoc and a PowerPoint reference template.

.EXAMPLE
pwsh scripts/docs/build-pptx.ps1 -InputFiles "Development Rules&References/Code Development Rules/Code Based Solution - Development-Rules.md"

.EXAMPLE
pwsh scripts/docs/build-pptx.ps1 -InputFiles .\\doc.md -DryRun
#>

param(
  [Parameter(Mandatory = $true)]
  [string[]] $InputFiles,

  [string] $OutputDir = "Documentation/build",

  [string] $ReferenceDoc = "Development Rules&References/LaTeX/PowerPoint/Autodesk PowerPoint Reference Template/autodesk-reference.pptx",

  [switch] $DryRun
)

. "$PSScriptRoot/_common.ps1"

$repoRoot = Resolve-RepoRoot
Assert-ToolOnPath 'pandoc'

$resolvedInputs = Normalize-InputFiles -InputFiles $InputFiles -RepoRoot $repoRoot
$outDirAbs = if ([System.IO.Path]::IsPathRooted($OutputDir)) { $OutputDir } else { Join-Path $repoRoot $OutputDir }
Ensure-OutputDir $outDirAbs

$refAbs = if ([System.IO.Path]::IsPathRooted($ReferenceDoc)) { $ReferenceDoc } else { Join-Path $repoRoot $ReferenceDoc }
if (-not (Test-Path -LiteralPath $refAbs)) {
  throw "PowerPoint reference doc not found: $refAbs"
}

foreach ($inFile in $resolvedInputs) {
  $outFile = Get-OutputPath -OutputDir $outDirAbs -InputFilePath $inFile -ExtensionWithDot '.pptx'

  $pandocArgs = @(
    '--from=gfm',
    '--to=pptx',
    "--reference-doc=$refAbs",
    "--output=$outFile",
    $inFile
  )

  Invoke-Pandoc -PandocArgs $pandocArgs -DryRun:$DryRun
}

Write-Host "PPTX build complete. Output: $outDirAbs"

