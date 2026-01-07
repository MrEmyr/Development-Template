# ArchiMate Technology Layer Elements (Reference)

Source: ArchiMate® 3.2 Specification, **Section 10.9 “Summary of Technology Layer Elements” (Table 8)**  
Link: `https://pubs.opengroup.org/architecture/archimate3-doc/ch-Technology-Layer.html#tbl-Technology-Layer-Elements`

This document captures the **technology layer element types** used in ArchiMate, including their **definitions**.

## Technology layer elements

- **Node**
  - **Definition**: Represents a computational or physical resource that hosts, manipulates, or interacts with other computational or physical resources.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=node;archiType=square;
    ```

- **Device**
  - **Definition**: Represents a physical IT resource upon which system software and artifacts may be stored or deployed for execution.
  - **Verified**: Draw.io style confirmed (renders as intended).
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=device;
    ```

- **System Software**
  - **Definition**: Represents software that provides or contributes to an environment for storing, executing, and using software or data deployed within it.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=sysSw;archiType=square;
    ```

- **Technology Collaboration**
  - **Definition**: Represents an aggregate of two or more technology internal active structure elements that work together to perform collective technology behavior.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=collab;archiType=square;
    ```

- **Technology Interface**
  - **Definition**: Represents a point of access where technology services offered by a technology internal active structure can be accessed.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=interface;archiType=square;
    ```

- **Path**
  - **Definition**: Represents a link between two or more technology internal active structure elements, through which these elements can exchange data, energy, or material.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=path;archiType=square;
    ```

- **Communication Network**
  - **Definition**: Represents a set of structures that connects devices or system software for transmission, routing, and reception of data.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=netw;archiType=square;
    ```

- **Technology Function**
  - **Definition**: Represents a collection of technology behavior that can be performed by a technology internal active structure element.
  - **Verified**: Draw.io style confirmed (renders as intended).
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=func;archiType=square;
    ```

- **Technology Process**
  - **Definition**: Represents a sequence of technology behaviors that achieves a specific result.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=proc;archiType=rounded;
    ```

- **Technology Interaction**
  - **Definition**: Represents a unit of collective technology behavior performed by (a collaboration of) two or more technology internal active structure elements.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=interaction;archiType=rounded;
    ```

- **Technology Event**
  - **Definition**: Represents a technology state change.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=event;archiType=rounded;
    ```

- **Technology Service**
  - **Definition**: Represents an explicitly defined exposed technology behavior.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=serv;archiType=rounded;
    ```

- **Artifact**
  - **Definition**: Represents a piece of data that is used or produced in a software development process, or by deployment and operation of an IT system.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=artifact;archiType=square;
    ```

- **Equipment**
  - **Definition**: Represents one or more physical machines, tools, or instruments that can create, use, store, move, or transform materials.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=equipment;archiType=square;
    ```

- **Facility**
  - **Definition**: Represents a physical structure or environment.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=facility;archiType=square;
    ```

- **Distribution Network**
  - **Definition**: Represents a physical network used to transport materials or energy.
  - **Verified**: Draw.io style confirmed (renders as intended).
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=distribution;archiType=square;
    ```

- **Material**
  - **Definition**: Represents tangible physical matter or energy.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#AFFFAF;shape=mxgraph.archimate3.application;appType=material;archiType=square;
    ```
