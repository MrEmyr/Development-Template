# ArchiMate Strategy Elements (Reference)

Source: ArchiMate® 3.2 Specification, **Section 7.5 “Summary of Strategy Elements” (Table 5)**  
Link: `https://pubs.opengroup.org/architecture/archimate3-doc/ch-Strategy-Layer.html#sec-Summary-of-Strategy-Elements`

This document captures the **strategy element types** used in ArchiMate, including their **definitions**.

## Strategy elements

- **Resource**
  - **Definition**: Represents an asset owned or controlled by an individual or organization.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#F5DEAA;shape=mxgraph.archimate3.application;appType=resource;archiType=square;
    ```

- **Capability**
  - **Definition**: Represents an ability that an active structure element, such as an organization, person, or system, possesses.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#F5DEAA;shape=mxgraph.archimate3.application;appType=capability;archiType=rounded;
    ```

- **Value Stream**
  - **Definition**: Represents a sequence of activities that create an overall result for a customer, stakeholder, or end user.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#F5DEAA;shape=mxgraph.archimate3.application;appType=valueStream;archiType=rounded;
    ```

- **Value Stage** *(modeling pattern; not a distinct ArchiMate element type in Table 5)*
  - **Definition**: Represents one stage/segment within a value stream (i.e., a part of the overall sequence of value-creating activities).
  - **How to model**:
    - Model the overall stream as a **Value Stream** element.
    - Model each stage using the **Value Stage** notation (the chevron/arrow style you’re using).
    - If you need explicit containment, relate stages to the value stream using **composition** or **aggregation**.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#F5DEAA;shape=mxgraph.archimate3.valueStream;
    ```

- **Course of Action**
  - **Definition**: Represents an approach or plan for configuring some capabilities and resources of the enterprise, undertaken to achieve a goal.
  - **Draw.io style reference (example shape style)**:
    ```text
    html=1;outlineConnect=0;whiteSpace=wrap;fillColor=#F5DEAA;shape=mxgraph.archimate3.application;appType=course;archiType=rounded;
    ```

