### What this is

This is a **Word header** snippet (WordprocessingML) extracted from `word/header2.xml` + `word/_rels/header2.xml.rels` in `SOW_Report Template 1.dotx`.

It provides:

- **A logo/watermark image** (`image3.png`) anchored *behind* the header content
- A dynamic **document TITLE field** (`TITLE \* MERGEFORMAT`) in the header text

### Key OpenXML bits (excerpt)

```xml
<w:drawing>
  <wp:anchor behindDoc="1" wp14:anchorId="6E94B6F0" wp14:editId="31B1DF76" ...>
    <wp:positionH relativeFrom="rightMargin">
      <wp:posOffset>-128270</wp:posOffset>
    </wp:positionH>
    <wp:positionV relativeFrom="paragraph">
      <wp:posOffset>-262787</wp:posOffset>
    </wp:positionV>
    <wp:extent cx="640080" cy="420624"/>
    <!-- ... -->
    <a:blip r:embed="rId1"/>
    <!-- ... -->
  </wp:anchor>
</w:drawing>
```

### Required relationship (header2.xml.rels)

```xml
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship
    Id="rId1"
    Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"
    Target="media/image3.png"/>
</Relationships>
```

### Notes for reuse (Word-only)

- **This is Word-only**. It relies on Word’s header part + relationship system.
- If you copy this header into another `.docx/.dotx`, you must also copy:
  - the image asset (`word/media/image3.png`) and
  - the relationship entry in the target header’s `.rels`.

