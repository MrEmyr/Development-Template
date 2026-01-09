### Purpose

This folder contains **Word-only** styling / visual appearance snippets extracted from `SOW_Report Template 1.dotx`.

These snippets are **WordprocessingML / OpenXML parts** intended for `.docx` / `.dotx` packages (Word). They are **not** for PowerPoint, Excel, or web/CSS.

### What was extracted (high-signal)

- **Theme palette (“Autodesk 2021”)**: `theme-autodesk-2021.xml`
- **Core typography + headings**: `styles-word-snippets.xml`
- **Outline numbering + list numbering**: `numbering-word-snippets.xml`
- **Branded header watermark (logo behind header text)**: `header2-logo-title-snippet.md`

### Design tokens (human readable)

- **Body font**: Arial (Normal)
- **Normal size**: 10pt (`w:sz=20` half-points)
- **Theme palette**:
  - **Accent 1**: `#666766`
  - **Accent 2**: `#D64F27` (also used for **Strong**)
  - **Accent 3**: `#43B874`
  - **Accent 4**: `#5D65AE` (used for **Title**)
  - **Accent 5**: `#FEC21C`
  - **Light 2**: `#CCCCCB`

### How to reuse (Word template packaging)

If you are comfortable with OpenXML packaging:

- **Theme**: copy/merge the `a:clrScheme` from `theme-autodesk-2021.xml` into the target template’s `word/theme/theme1.xml`.
- **Styles**: merge the `<w:style ...>` elements from `styles-word-snippets.xml` into the target template’s `word/styles.xml`.
- **Numbering**: merge the relevant `<w:abstractNum ...>` and `<w:num ...>` elements from `numbering-word-snippets.xml` into the target template’s `word/numbering.xml`.
- **Header watermark**: see `header2-logo-title-snippet.md` for the header drawing block + the required relationship to `media/image3.png`.

If you prefer **Word UI** (safer, manual):

- Open a doc based on `SOW_Report Template 1.dotx`
- Use **Styles pane → Manage Styles** to copy styles into a new `.dotx` (Organizer) OR create a new template based on this one and edit content while keeping formatting.

