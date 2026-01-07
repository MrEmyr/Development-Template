# ArchiMate Motivation Elements (Reference)

Source: ArchiMate® 3.2 Specification, **Section 6.5 “Summary of Motivation Elements” (Table 4)**  
Link: `https://pubs.opengroup.org/architecture/archimate3-doc/ch-Motivation-Elements.html#sec-Summary-of-Motivation-Elements`

This document captures the **motivation element types** used in ArchiMate, including their **definitions**.

## Draw.io style notes (optional)

The styles below are **shape styles** (not edge styles). They will only render as expected if your Draw.io/diagrams.net instance has the **ArchiMate 3** shape library (i.e., the `mxgraph.archimate3.*` stencils).

If a style doesn’t render correctly, the most reliable way to confirm the correct style keys is:
- Insert the intended ArchiMate shape from the Draw.io library
- Right-click it → **Edit Style**
- Copy/paste that style string here

## Motivation elements

- **Stakeholder**
  - **Definition**: Represents the role of an individual, team, or organization (or classes thereof) that represents their interests in the effects of the architecture.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#CCCCFF;shape=mxgraph.archimate3.application;appType=role;archiType=oct;
    ```
- **Driver**
  - **Definition**: Represents an external or internal condition that motivates an organization to define its goals and implement the changes necessary to achieve them.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#CCCCFF;shape=mxgraph.archimate3.application;appType=driver;archiType=oct;
    ```
- **Assessment**
  - **Definition**: Represents the result of an analysis of the state of affairs of the enterprise with respect to some driver.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#CCCCFF;shape=mxgraph.archimate3.application;appType=assess;archiType=oct;
    ```

- **Goal**
  - **Definition**: Represents a high-level statement of intent, direction, or desired end state for an organization and its stakeholders.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#CCCCFF;shape=mxgraph.archimate3.application;appType=goal;archiType=oct;
    ```

- **Outcome**
  - **Definition**: Represents an end result, effect, or consequence of a certain state of affairs.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#CCCCFF;shape=mxgraph.archimate3.application;appType=outcome;archiType=oct;
    ```

- **Principle**
  - **Definition**: Represents a statement of intent defining a general property that applies to any system in a certain context in the architecture.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#CCCCFF;shape=mxgraph.archimate3.application;appType=principle;archiType=oct;
    ```

- **Requirement**
  - **Definition**: Represents a statement of need defining a property that applies to a specific system as described by the architecture.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#CCCCFF;shape=mxgraph.archimate3.application;appType=requirement;archiType=oct;
    ```

- **Constraint**
  - **Definition**: Represents a limitation on aspects of the architecture, its implementation process, or its realization.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#CCCCFF;shape=mxgraph.archimate3.application;appType=constraint;archiType=oct;
    ```
    
- **Meaning**
  - **Definition**: Represents the knowledge or expertise present in, or the interpretation given to, a concept in a particular context.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#CCCCFF;shape=mxgraph.archimate3.application;appType=meaning;archiType=oct;
    ```

- **Value**
  - **Definition**: Represents the relative worth, utility, or importance of a concept.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#CCCCFF;shape=mxgraph.archimate3.application;appType=amValue;archiType=oct;
    ```
