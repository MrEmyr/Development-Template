# 2025 Autodesk PPT (Arial) — PowerPoint-only style/code snippets

Source template:
- `2025 - Autodesk PPT - Arial.potx`

This document intentionally keeps **PowerPoint-only** snippets and notes (PowerPoint Open XML / Slide Master / Theme).  
Do **not** repurpose these snippets as CSS/web styling.

## Theme: color + font scheme (Theme1 / “Custom 1”)

Extracted from `ppt/theme/theme1.xml`.

**Scheme colors (hex):**
- **dk1**: `#000000`
- **lt1**: `#FFFFFF`
- **dk2**: `#666666`
- **lt2**: `#F5F5F0`
- **accent1**: `#FFFE00`
- **accent2**: `#F09D4F`
- **accent3**: `#F2510A`
- **accent4**: `#1D91D0`
- **accent5**: `#2AD0A9`
- **accent6**: `#EEE310`
- **hlink**: `#1278AF`
- **folHlink**: `#D34612`

**Font scheme:**
- **Major font (Latin)**: `Arial`
- **Minor font (Latin)**: `Arial`

Snippets:
- `Development Rules&References/LaTeX/PowerPoint/snippets/2025 - Autodesk PPT - Arial-theme1-clr-font.xml`

## Slide size

Extracted from `ppt/presentation.xml`.

- **Slide size (EMU)**: `cx=12192000`, `cy=6858000`
- **Aspect**: widescreen **16:9** (PowerPoint default widescreen size)

Snippet:
- `Development Rules&References/LaTeX/PowerPoint/snippets/2025 - Autodesk PPT - Arial-slide-size.xml`

## Master color mapping (how scheme colors map to “bg/tx”)

The slide master maps background/text slots to the theme scheme:
- **bg1 → lt1**
- **tx1 → dk1**
- **bg2 → lt2**
- **tx2 → dk2**
- **accent1..6 → accent1..6**
- **hlink / folHlink → hlink / folHlink**

This matters because many layout backgrounds reference **`bg1`** or **`tx1`**, then apply luminance transforms.

## Background examples (dark vs light)

Extracted from representative layouts:
- **Dark welcome** uses a scheme color with luminance transforms:
  - `schemeClr val="tx1"` + `lumMod=95000` + `lumOff=5000`
- **Light welcome** uses a fixed sRGB fill:
  - `srgbClr val="F5F5F0"` (matches `lt2`)

Snippet:
- `Development Rules&References/LaTeX/PowerPoint/snippets/2025 - Autodesk PPT - Arial-layout-bg-examples.xml`

## Master text styles (title/body, bullets, sizes)

Extracted from `ppt/slideMasters/slideMaster1.xml` → `<p:txStyles>`.

High-signal defaults:
- **Title (lvl1)**:
  - **Size**: `sz="5400"` (PowerPoint uses 1/100 pt → **54 pt**)
  - **Bold**: `b="1"`
  - **Color**: `schemeClr val="tx1"` (via master mapping → `dk1`)
- **Body (lvl1)**:
  - **Size**: `sz="2800"` (**28 pt**)
  - **Color**: `schemeClr val="tx1"`
  - **Bullets**: lvl1 explicitly sets `buNone`; bullets appear from lvl2+ in this master
- **Body bullets**:
  - lvl2 uses `•`
  - lvl3 uses `⁃`

Important nuance:
- Even though the theme font scheme is **Arial**, the master text styles include **East Asian (`a:ea`) typefaces** like:
  - `Artifakt Legend`
  - `Artifakt Element Ofc`
If those fonts are not installed on a machine, PowerPoint may substitute a fallback. Keep this in mind if you want a strict Arial-only deck.

Snippet:
- `Development Rules&References/LaTeX/PowerPoint/snippets/2025 - Autodesk PPT - Arial-slideMaster1-txStyles.xml`

## Available slide layouts (names)

Extracted from each `ppt/slideLayouts/slideLayout*.xml` via the `<p:cSld name="...">` attribute.

Index file (tab-separated):
- `Development Rules&References/LaTeX/PowerPoint/snippets/2025 - Autodesk PPT - Arial-layout-names.tsv`

