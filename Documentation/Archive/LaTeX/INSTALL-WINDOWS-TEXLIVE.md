# (Archived) Install TeX Live on Windows (for Cursor)

Archived on 2026-01-08 after TeX Live installation was completed for this workspace.

---

This repo uses a local LaTeX toolchain to generate PDFs (see `Development Rules&References/LaTeX/ROADMAP.md`).

## 1) Install TeX Live

- Download and run the **TeX Live installer for Windows** from the official TeX Live site:
  - [TeX Live — Getting TeX](https://tug.org/texlive/acquire-netinstall.html)
- In the installer:
  - Prefer **“full”** unless you have a strong reason to keep the install minimal (full avoids missing-package surprises).
  - Ensure TeX Live’s `bin\windows` directory is added to your **PATH** (the installer normally handles this).

## 2) Verify in PowerShell (outside Cursor)

Open a **new** PowerShell window (important: PATH changes won’t appear in already-open terminals) and run:

```powershell
pdflatex --version
latexmk --version
kpsewhich --version
```

Any of these commands should print version info. If you see “command not found”, your PATH likely didn’t update.

## 3) Verify in Cursor

- Restart Cursor (required after PATH changes).
- Open Cursor’s integrated terminal and run:

```powershell
pdflatex --version
latexmk --version
```

## Troubleshooting

- If **PowerShell works but Cursor does not**:
  - Fully **restart Cursor** (and any terminals inside it).
  - If it still fails, Windows may need a log out / log in to refresh environment variables for all apps.
- If **neither works**:
  - Confirm TeX Live is installed and locate the folder that contains `pdflatex.exe`, typically something like:
    - `C:\texlive\2025\bin\windows\`
  - Add that folder to your **User PATH** (Windows Environment Variables), then reopen a new terminal and retry.

