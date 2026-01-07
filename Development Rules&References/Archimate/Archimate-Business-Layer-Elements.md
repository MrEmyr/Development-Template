# ArchiMate Business Layer Elements (Reference)

Source: ArchiMate® 3.2 Specification, **Section 8.6 “Summary of Business Layer Elements” (Table 6)**  
Link: `https://pubs.opengroup.org/architecture/archimate3-doc/ch-Business-Layer.html#sec-Summary-of-Business-Layer-Elements`

This document captures the **business layer element types** used in ArchiMate, including their **definitions**.

## Business layer elements

- **Business Actor**
  - **Definition**: Represents a business entity that is capable of performing behavior.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=actor;archiType=square;
    ```
- **Business Role**
  - **Definition**: Represents the responsibility for performing specific behavior, to which an actor can be assigned, or the part an actor plays in a particular action or event.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=role;archiType=square;
    ```
- **Business Collaboration**
  - **Definition**: Represents an aggregate of two or more business internal active structure elements that work together to perform collective behavior.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=collab;archiType=square;
    ```
- **Business Interface**
  - **Definition**: Represents a point of access where business services are made available to the environment.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=interface;archiType=square;
    ```
- **Business Process**
  - **Definition**: Represents a sequence of business behaviors that achieves a specific result such as a defined set of products or business services.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=proc;archiType=rounded;
    ```
- **Business Function**
  - **Definition**: Represents a collection of business behavior based on a chosen set of criteria such as required business resources and/or competencies, and is managed or performed as a whole.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=func;archiType=rounded;
    ```
- **Business Interaction**
  - **Definition**: Represents a unit of collective business behavior performed by (a collaboration of) two or more business actors, business roles, or business collaborations.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=interaction;archiType=rounded;
    ```
- **Business Event**
  - **Definition**: Represents a business-related state change.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=event;archiType=rounded;
    ```
- **Business Service**
  - **Definition**: Represents explicitly defined behavior that a business role, business actor, or business collaboration exposes to its environment.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=serv;archiType=rounded;
    ```
- **Business Object**
  - **Definition**: Represents a concept used within a particular business domain.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=passive;archiType=square;
    ```
- **Contract**
  - **Definition**: Represents a formal or informal specification of an agreement between a provider and a consumer that specifies the rights and obligations associated with a product and establishes functional and non-functional parameters for interaction.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=contract;archiType=square;
    ```
- **Representation**
  - **Definition**: Represents a perceptible form of the information carried by a business object.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=representation;archiType=square;
    ```
- **Product**
  - **Definition**: Represents a coherent collection of services and/or passive structure elements, accompanied by a contract, which is offered as a whole to (internal or external) customers.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#ffff99;shape=mxgraph.archimate3.application;appType=product;archiType=square;
    ```
