# LaTeX Documentation Roadmap (Repo Implementation Guide)

This roadmap is a **step-by-step checklist** to introduce LaTeX-based documentation outputs (typically PDF) in this repository.

---

## Goals

- **Primary**: Generate consistent, high-quality **PDF documentation** from repo sources.
- **Secondary (optional)**: Also generate **HTML** from the same sources.
- **Keep it incremental**: Start with one document set (e.g., BPMN docs), then expand.

---

## Choose an authoring approach (pick one)

### Option A — Markdown source → PDF via Pandoc (recommended for this repo)

- **You keep writing in Markdown** (`.md`)
- You can embed **LaTeX math** in Markdown
- A build step converts Markdown into a PDF using a LaTeX template

**Best when** you already have a lot of Markdown (this repo does) and want minimal rewrite.

### Option B — Pure LaTeX source → PDF via latexmk

- You write in `.tex`
- Maximum control over typography, indexing, glossaries, and cross-references

**Best when** you want “book-quality” manuals and are comfortable authoring LaTeX directly.

### Option C — Hybrid

- Keep most docs in Markdown (Option A)
- Create a few “formal manuals” in LaTeX (Option B)

---

## Phase 0 — Confirm requirements (30–60 minutes)

- [x] **Outputs**: PDF + optional DOCX/PPTX (no HTML for now)
- [x] **Build location**: local only, or local + CI? (chosen: **local only**, for now)
- [x] **Windows-first**: yes (PowerShell build script recommended).
- [x] **Doc set to pilot**: `Development Rules&References/Code Development Rules/Code Based Solution - Development-Rules.md` (pilot only)

Deliverable:
- [x] Create `Development Rules&References/LaTeX/DECISIONS.md` with the chosen option and output targets.

---

## Phase 1 — Install toolchain (local) (1–2 hours)

### Install a TeX distribution

Pick one:
- **TeX Live** (recommended for consistency across machines)
- **MiKTeX** (Windows-friendly; can auto-install missing packages)

### Install Pandoc (if using Option A or C)

Install Pandoc and ensure it is on PATH.

Notes:
- If you need a reference later, use the official installers: `https://pandoc.org/installing.html`

Deliverables:
- [ ] Confirm `pdflatex` / `lualatex` runs from terminal
- [ ] If using Pandoc: confirm `pandoc --version`

---

## Phase 2 — Add repo structure (30 minutes)

Recommended folders:
- `Development Rules&References/LaTeX/template/` — LaTeX templates and shared style
- `Development Rules&References/LaTeX/macros/` — shared `macros.tex` (commands used across docs)
- `Development Rules&References/assets/` — images/exports (e.g., `.png`, `.svg`)
- `Documentation/build/` — generated PDFs (usually **gitignored**)

Deliverables:
- [ ] Create template and macro folders
- [ ] Add `Documentation/build/` to `.gitignore` (and LaTeX build artifacts like `*.aux`, `*.log`, etc.)

---

## Phase 3 — Standardize formatting primitives (1–2 hours)

Create reusable LaTeX macros so docs look consistent:
- **Code/style snippets**: good for draw.io style strings
- **Terminology**: consistent formatting for definitions
- **Domain naming**: consistent formatting for important names (e.g., product names, diagram element names, conventions)

Suggested macro ideas (names are examples):
- `\term{...}` — glossary-ish highlighting
- `\drawiostyle{...}` — monospace boxed style string
- `\name{...}` — emphasized “name” formatting (notation/domain-agnostic)

Deliverables:
- [ ] Add `Development Rules&References/LaTeX/macros/macros.tex`
- [ ] Add a minimal template in `Development Rules&References/LaTeX/template/template.tex`

---

## Phase 4 — Add build scripts (Windows-first) (1–2 hours)

Create build scripts (non-interactive, repeatable):

### If Option A (Pandoc) — recommended scripts

- `scripts/docs/build-pdf.ps1`
  - **Inputs**: one or more `.md` files
  - **Output**: PDFs into `Documentation/build/`
  - Uses your **LaTeX template + macros** (Pandoc → LaTeX engine)

- `scripts/docs/build-docx.ps1`
  - **Inputs**: one or more `.md` files
  - **Output**: DOCX into `Documentation/build/`
  - Uses a provided **Word reference template** (`--reference-doc=...`)

- `scripts/docs/build-pptx.ps1`
  - **Inputs**: one or more `.md` files
  - **Output**: PPTX into `Documentation/build/`
  - Uses a provided **PowerPoint reference template** (`--reference-doc=...`)

Optional:
- `scripts/docs/build-docs.sh` for non-Windows environments

### If Option B (pure LaTeX)

- `scripts/docs/build-tex.ps1` running `latexmk` (or `lualatex` repeatedly via `latexmk`)

Deliverables:
- [ ] One command builds a **PDF** for the pilot doc set
- [ ] One command builds a **DOCX** for the pilot doc set
- [ ] One command builds a **PPTX** for the pilot doc set
- [ ] Outputs go to `Documentation/build/`

---

## Phase 5 — Pilot conversion (BPMN pack) (0.5–2 days)

Pick one:

### Option A pilot (Markdown → PDF)

- [ ] Choose 1–3 docs to compile first (example):
  - `Development Rules&References/BPMN/BPMN-Events.md`
  - `Development Rules&References/BPMN/BPMN-Gateways-and-Activities.md`
  - `Development Rules&References/BPMN/BPMN-Relationships-and-Flows.md`
- [ ] Ensure code blocks (draw.io styles) render correctly in PDF
- [ ] Ensure headings/TOC and page breaks look good

### Option B pilot (pure LaTeX)

- [ ] Create `Development Rules&References/LaTeX/bpmn/bpmn.tex`
- [ ] Convert the selected docs into structured LaTeX sections

Deliverables:
- [ ] `Documentation/build/BPMN.pdf` (or a set of PDFs)

---

## Phase 6 — Diagrams (draw.io) integration (optional but recommended) (0.5–1 day)

Decide how diagrams enter PDFs:
- **Preferred**: export `.drawio` → `.svg` (best quality) or `.png` (safe compatibility)
- Store exports in `Development Rules&References/assets/`

Deliverables:
- [ ] A repeatable convention for diagram export naming and storage
- [ ] A sample figure included in the pilot PDF

---

## Phase 7 — CI automation (optional) (0.5–1 day)

If you want automated builds:
- [ ] Add CI job that installs TeX + Pandoc (if needed)
- [ ] Build PDFs on PRs
- [ ] Upload artifacts (PDFs) for download

Deliverables:
- [ ] CI pipeline generates PDFs without manual steps

---

## Phase 8 — Quality improvements (optional)

- [ ] **Glossary** (`glossaries`)
- [ ] **Index** (`imakeidx`)
- [ ] **References** (`biblatex`)
- [ ] **Linting** (check missing images, broken refs)

---

## Suggested “Definition of Done” for the rollout

- [ ] There is a single command to build PDFs.
- [ ] The BPMN doc set produces a clean PDF with readable code blocks.
- [ ] Generated outputs are not accidentally committed (unless you explicitly want them).
- [ ] The team has a short “how to build docs” README.

---

## Next action (tell me which you want)

Answer these and I can implement the repo scaffolding + scripts accordingly:

- **Authoring model**: Option A (Pandoc), Option B (pure LaTeX), or hybrid?
- **Output**: PDF only, or PDF + HTML?
- **CI**: yes or no (and which system, if you have one)?

