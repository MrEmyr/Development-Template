# Documentation Output Decisions

This file records documentation build decisions for this repository, based on the guidance in `Development Rules&References/LaTeX/ROADMAP.md`.

## 2026-01-07 — Authoring model and output targets

- **Authoring model**: **Hybrid (Option C)**
  - **Source of truth**: Markdown (`.md`) for development documentation.
  - **Formal/end-user deliverables**: generated from Markdown as needed.
- **Outputs**: **variable per project**
  - **PDF**: produced via a **LaTeX-based PDF pipeline** (Pandoc → LaTeX engine + template).
  - **DOCX**: produced via Pandoc using a provided Word template (`--reference-doc=...reference.docx`).
  - **PPTX**: produced via Pandoc using a provided PowerPoint template (`--reference-doc=...reference.pptx`).
  - **HTML**: **not required (for now)**.
- **Build location**: **local only (for now)**
  - Documentation outputs are generated on developer machines when needed.
  - This may later expand to include CI-based builds (artifacts/releases) if/when required.
- **Platform focus**: **Windows-first**
  - PowerShell (`.ps1`) scripts are acceptable/preferred for documentation build automation.
- **Pilot doc set (for build validation only)**:
  - `Development Rules&References/Code Development Rules/Code Based Solution - Development-Rules.md`

