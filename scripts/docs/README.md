### Documentation build scripts (Phase 4)

These scripts generate documentation outputs from Markdown using **Pandoc**.

Outputs are written to **`Documentation/build/`** (gitignored).

### Prerequisites

- **Pandoc** installed and on PATH (`pandoc --version`)
- For **PDF**: a LaTeX engine installed (e.g. TeX Live or MiKTeX)

### Scripts

- **PDF**: `scripts/docs/build-pdf.ps1`
  - Uses `Development Rules&References/LaTeX/template/pandoc-template.tex`
  - Includes macros from `Development Rules&References/LaTeX/macros/macros.tex`

- **DOCX**: `scripts/docs/build-docx.ps1`
  - Uses Word reference template:
    `Development Rules&References/LaTeX/Word/Autodesk Word Reference Template/autodesk-reference.docx`

- **PPTX**: `scripts/docs/build-pptx.ps1`
  - Uses PowerPoint reference template:
    `Development Rules&References/LaTeX/PowerPoint/Autodesk PowerPoint Reference Template/autodesk-reference.pptx`

### Usage examples

Build the pilot doc set (replace with the file(s) you want):

```powershell
pwsh scripts/docs/build-pdf.ps1  -InputFiles "Development Rules&References/Code Development Rules/Code Based Solution - Development-Rules.md"
pwsh scripts/docs/build-docx.ps1 -InputFiles "Development Rules&References/Code Development Rules/Code Based Solution - Development-Rules.md"
pwsh scripts/docs/build-pptx.ps1 -InputFiles "Development Rules&References/Code Development Rules/Code Based Solution - Development-Rules.md"
```

Dry run (prints the Pandoc command without executing):

```powershell
pwsh scripts/docs/build-pdf.ps1 -InputFiles .\\path\\to\\doc.md -DryRun
```

