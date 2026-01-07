# ArchiMate Application Layer Elements (Reference)

Source: ArchiMate® 3.2 Specification, **Section 9.5 “Summary of Application Layer Elements” (Table 7)**  
Link: `https://pubs.opengroup.org/architecture/archimate3-doc/ch-Application-Layer.html#tbl-Application-Layer-Elements`

This document captures the **application layer element types** used in ArchiMate, including their **definitions**.

## Application layer elements

- **Application Component**
  - **Definition**: Represents an encapsulation of application functionality aligned to implementation structure, which is modular and replaceable.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#99ffff;shape=mxgraph.archimate3.application;appType=comp;archiType=square;
    ```
- **Application Collaboration**
  - **Definition**: Represents an aggregate of two or more application internal active structure elements that work together to perform collective application behavior.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#99ffff;shape=mxgraph.archimate3.application;appType=collab;archiType=square;
    ```
- **Application Interface**
  - **Definition**: Represents a point of access where application services are made available to a user, another application component, or a node.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#99ffff;shape=mxgraph.archimate3.application;appType=interface;archiType=square;
    ```
- **Application Function**
  - **Definition**: Represents automated behavior that can be performed by an application component.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#99ffff;shape=mxgraph.archimate3.application;appType=func;archiType=rounded;
    ```
- **Application Interaction**
  - **Definition**: Represents a unit of collective application behavior performed by (a collaboration of) two or more application components.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#99ffff;shape=mxgraph.archimate3.application;appType=interaction;archiType=rounded;
    ```
- **Application Process**
  - **Definition**: Represents a sequence of application behaviors that achieves a specific result.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#99ffff;shape=mxgraph.archimate3.application;appType=proc;archiType=rounded;
    ```
- **Application Event**
  - **Definition**: Represents an application state change.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#99ffff;shape=mxgraph.archimate3.application;appType=event;archiType=rounded;
    ```
- **Application Service**
  - **Definition**: Represents an explicitly defined exposed application behavior.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#99ffff;shape=mxgraph.archimate3.application;appType=serv;archiType=rounded;
    ```
- **Data Object**
  - **Definition**: Represents data structured for automated processing.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#99ffff;shape=mxgraph.archimate3.application;appType=passive;archiType=square;
    ```
