# Documentation Rules

These rules are derived from the `Documentation` notes in `Cursor Setup.drawio`.

## Consolidated Documentation

- **Use a consolidated approach to documentation.**
  - Prefer updating existing core documents instead of creating many small, one-off documents.
  - Keep Solution Design, Solution Planning, and UI documentation as the primary documents.
  - Development documentation remains **Markdown** (`.md`) for day-to-day work; **end-user documentation** should be **published** using a **LaTeX-based output pipeline** (Hybrid/Option C — see `Development Rules&References/LaTeX/ROADMAP.md`) to produce more polished deliverables (e.g., PDFs).

## Diagrams

- **All diagrams should be created and maintained in Draw.io.**
- Store working Draw.io files in appropriate subfolders under `Documentation/` (for solution-specific diagrams like architecture and UI layouts).
- Store reference/standards diagrams that are not solution-specific under `Development Rules&References/` (for example, reference diagrams shipped with these rules).

## Archive

- Only **archive old files that have been superseded**.
- **Mirror the development folders in `Documentation/Archive/`** so the archive structure matches the active `Documentation/` structure.
