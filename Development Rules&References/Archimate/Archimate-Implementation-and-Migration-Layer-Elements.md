# ArchiMate Implementation and Migration Layer Elements (Reference)

Source: ArchiMate® 3.2 Specification, **Section 12.3 “Summary of Implementation and Migration Elements” (Table 9)**  
Link: `https://pubs.opengroup.org/architecture/archimate3-doc/ch-Implementation-and-Migration-Layer.html#tbl-Implementation-and-Migration-Elements`

This document captures the **implementation and migration element types** used in ArchiMate, including their **definitions**.

## Implementation and migration elements

- **Work Package**
  - **Definition**: Represents a series of actions identified and designed to achieve specific results within specified time and resource constraints.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#FFE0E0;shape=mxgraph.archimate3.application;appType=workPackage;archiType=rounded;
    ```

- **Deliverable**
  - **Definition**: Represents a precisely defined result of a work package.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#FFE0E0;shape=mxgraph.archimate3.application;appType=deliverable;
    ```

- **Implementation Event**
  - **Definition**: Represents a state change related to implementation or migration.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#FFE0E0;shape=mxgraph.archimate3.application;appType=event;archiType=rounded;
    ```

- **Plateau**
  - **Definition**: Represents a relatively stable state of the architecture that exists during a limited period of time.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#FFE0E0;shape=mxgraph.archimate3.application;appType=plateau;
    ```
    
- **Gap**
  - **Definition**: Represents a statement of difference between two plateaus.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#FFE0E0;shape=mxgraph.archimate3.application;appType=gap;
    ```
