# ArchiMate Relationships and Relationship Connectors (Reference)

Source: ArchiMate® 3.2 Specification, **Section 5.6 “Summary of Relationships” (Table 3)** and **Section 5.5 “Relationship Connectors”**  
Link: `https://pubs.opengroup.org/architecture/archimate3-doc/ch-Relationships-and-Relationship-Connectors.html#sec-Summary-of-Relationships`

This document captures the **relationship types** and **relationship connectors** used in ArchiMate diagrams, including their **definitions** and **role names**.

## Draw.io style notes (optional)

If you include Draw.io styles here, prefer **code formatting** (inline code or fenced code blocks) so the style string is copy/paste safe and doesn’t get altered by smart quotes.

## Structural relationships
- **Composition**
  - **Definition**: Represents that an element consists of one or more other concepts.
  - **Role names**: → composed of, ← composed in
  - **Draw.io style reference (example edge style)**:
    ```text
    html=1;startArrow=diamondThin;startFill=1;edgeStyle=elbowEdgeStyle;elbow=vertical;startSize=10;endArrow=none;endFill=0;rounded=0;
    ```
- **Aggregation**
  - **Definition**: Represents that an element combines one or more other concepts.
  - **Role names**: → aggregates, ← aggregated in
  - **Draw.io style reference (example edge style)**:
    ```text
    html=1;startArrow=diamondThin;startFill=0;edgeStyle=elbowEdgeStyle;elbow=vertical;startSize=10;endArrow=none;endFill=0;rounded=0;
    ```
- **Assignment**
  - **Definition**: Represents the allocation of responsibility, performance of behavior, storage, or execution.
  - **Role names**: → assigned to, ← has assigned
  - **Draw.io style reference (example edge style)**:
    ```text
    endArrow=block;html=1;endFill=1;startArrow=oval;startFill=1;edgeStyle=elbowEdgeStyle;elbow=vertical;rounded=0;
    ```
- **Realization**
  - **Definition**: Represents that an element plays a critical role in the creation, achievement, sustenance, or operation of a more abstract element.
  - **Role names**: → realizes, ← realized by
  - **Draw.io style reference (example edge style)**:
    ```text
    edgeStyle=elbowEdgeStyle;html=1;endArrow=block;elbow=vertical;endFill=0;dashed=1;rounded=0;
    ```

## Dependency relationships
- **Serving**
  - **Definition**: Represents that an element provides its functionality to another element.
  - **Role names**: → serves, ← served by
  - **Draw.io style reference (example edge style)**:
    ```text
    edgeStyle=elbowEdgeStyle;html=1;endArrow=open;elbow=vertical;endFill=0;rounded=0;
    ```
- **Access**
  - **Definition**: Represents the ability of behavior and active structure elements to observe or act upon passive structure elements.
  - **Role names**: → accesses, ← accessed by
  - **Draw.io style reference (example edge style)**:
  - **Note**: The “no arrows” variant can be useful as an internal/conceptual connector, but is **not** the canonical ArchiMate access notation (which is normally directional).
  - **No arrows**:

    ```text
    edgeStyle=elbowEdgeStyle;html=1;endArrow=none;elbow=vertical;dashed=1;startFill=0;dashPattern=1 4;rounded=0;
    ```
  - **Single arrow**:

    ```text
    edgeStyle=elbowEdgeStyle;html=1;endArrow=open;elbow=vertical;endFill=0;dashed=1;dashPattern=1 4;rounded=0;
    ```
  - **Double arrow**:

    ```text
    edgeStyle=elbowEdgeStyle;html=1;endArrow=open;elbow=vertical;endFill=0;dashed=1;startArrow=open;startFill=0;dashPattern=1 4;rounded=0;
    ```    
- **Influence**
  - **Definition**: Represents that an element affects the implementation or achievement of some motivation element.
  - **Role names**: → influences, ← influenced by
  - **Draw.io style reference (example edge style)**:
    ```text
    edgeStyle=elbowEdgeStyle;html=1;endArrow=open;elbow=vertical;endFill=0;dashed=1;dashPattern=6 4;rounded=0;
    ```
- **Association**
  - **Definition**: Represents an unspecified relationship, or one that is not represented by another ArchiMate relationship.
  - **Role names**: associated with, → associated to, ← associated from
  - **Draw.io style reference (example edge style)**:
    ```text
    edgeStyle=elbowEdgeStyle;html=1;startArrow=none;endArrow=none;elbow=vertical;rounded=0;
    ```

## Dynamic relationships

- **Triggering**
  - **Definition**: Represents a temporal or causal relationship between elements.
  - **Role names**: → triggers, ← triggered by
  - **Draw.io style reference (example edge style)**:
    ```text
    edgeStyle=elbowEdgeStyle;html=1;endArrow=block;dashed=0;elbow=vertical;endFill=1;rounded=0;
    ```
- **Flow**
  - **Definition**: Represents transfer from one element to another.
  - **Role names**: → flows to, ← flows from
  - **Draw.io style reference (example edge style)**:
    ```text
    edgeStyle=elbowEdgeStyle;html=1;endArrow=block;dashed=1;elbow=vertical;endFill=1;dashPattern=6 4;rounded=0;
    ```

## Other relationships
- **Specialization**
  - **Definition**: Represents that an element is a particular kind of another element.
  - **Role names**: → specializes, ← specialized by
  - **Draw.io style reference (example edge style)**:
    ```text
    endArrow=block;html=1;endFill=0;edgeStyle=elbowEdgeStyle;elbow=vertical;rounded=0;
    ```

## Relationship connectors
- **Junction**
  - **Definition**: Used to connect relationships of the same type.
  - **Types**:
    - **(And) Junction**
      - **Draw.io style reference (example shape style)**:

        ```text
        ellipse;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;strokeColor=#000000;fillColor=#000000;
        ```
    - **Or Junction**
      - **Draw.io style reference (example shape style)**:

        ```text
        ellipse;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;strokeColor=#000000;fillColor=#ffffff;
        ```

