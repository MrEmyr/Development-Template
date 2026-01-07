# Pilot Setup Notes (Temporary)

This file exists to capture **what was added/changed during the pilot setup** of this repository as a reusable template.

Once the documentation build approach and folder structure are stabilized, this file can be **deleted cleanly**.

## Summary of notable additions/changes

- **Docs restructure**
  - Introduced `Development Rules&References/` to hold **rules, references, and templates**.
  - `Documentation/` is now reserved for **solution-specific development documentation** (per project), with `Documentation/Archive/` for superseded items.
  - Updated `README.md` to reflect this split.
  - Added `Documentation/README.md` explaining the intent of `Documentation/`.

- **LaTeX/Pandoc documentation approach**
  - Added `Development Rules&References/LaTeX/ROADMAP.md` (implementation checklist).
  - Added `Development Rules&References/LaTeX/DECISIONS.md` to record Phase 0 decisions:
    - Hybrid outputs: **PDF (LaTeX-based pipeline)** + **DOCX/PPTX (Pandoc + reference templates)**
    - **Build location**: local only (for now)
    - **Windows-first**: PowerShell scripts acceptable/preferred
    - **Pilot doc set**: `Development Rules&References/Code Development Rules/Code Based Solution - Development-Rules.md`

- **Source-of-truth diagram reference**
  - Added `Cursor Setup.drawio` placeholder (referenced by multiple rule docs).

- **Cleanup**
  - Removed stray temp/backup diagram artifacts (e.g., temp `.drawio`/backup files) so they don’t get committed.

