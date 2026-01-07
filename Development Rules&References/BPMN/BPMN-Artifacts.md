# BPMN — Artifacts (Reference)

## Artifact concept

- **Artifact**
  - **Purpose**: Artifacts provide **additional information** about a process model without being part of the core sequence/message flow.

## Common artifacts

- **Data Object**
  - **Purpose**: Represents information that is **required or produced** by activities (e.g., documents, data, or other objects passed between activities).
  - **Connection**: Typically associated to flow objects using an **Association**.
  - **Draw.io style reference (example shape style)**:
    ```text
    shape=mxgraph.bpmn.data2;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;size=15;html=1;
    ```

- **Data Object Collection**
  - **Purpose**: Represents a **collection** (multiple instances) of a data object.
  - **Connection**: Typically associated to flow objects using an **Association**.
  - **Draw.io style reference (example shape style)**:
    ```text
    shape=mxgraph.bpmn.data2;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;size=15;html=1;bpmnTransferType=none;isCollection=1;
    ```

- **Data Input**
  - **Purpose**: Represents a **named input** to a process or activity (used to show required data explicitly).
  - **Connection**: Typically associated to flow objects using an **Association**.
  - **Draw.io style reference (example shape style)**:
    ```text
    shape=mxgraph.bpmn.data2;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;size=15;html=1;bpmnTransferType=input;
    ```

- **Data Input Collection**
  - **Purpose**: Represents a **collection** (multiple inputs) for a data input.
  - **Connection**: Typically associated to flow objects using an **Association**.
  - **Draw.io style reference (example shape style)**:
    ```text
    shape=mxgraph.bpmn.data2;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;size=15;html=1;bpmnTransferType=input;isCollection=1;
    ```

- **Data Output**
  - **Purpose**: Represents a **named output** from a process or activity (used to show produced data explicitly).
  - **Connection**: Typically associated to flow objects using an **Association**.
  - **Draw.io style reference (example shape style)**:
    ```text
    shape=mxgraph.bpmn.data2;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;size=15;html=1;bpmnTransferType=output;
    ```

- **Data Output Collection**
  - **Purpose**: Represents a **collection** (multiple outputs) for a data output.
  - **Connection**: Typically associated to flow objects using an **Association**.
  - **Draw.io style reference (example shape style)**:
    ```text
    shape=mxgraph.bpmn.data2;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;size=15;html=1;bpmnTransferType=output;isCollection=1;
    ```

- **Data Store**
  - **Purpose**: Represents a place where the process can read/write data that **persists beyond the scope of the process**.
  - **Draw.io style reference (example shape style)**:
    ```text
    shape=datastore;html=1;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;
    ```

- **Annotation**
  - **Purpose**: Allows the modeller to provide additional information for the reader.
  - **Connection**: Can be associated with any object in the diagram.
  - **Draw.io style reference (example shape style)**:
    ```text
    text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;
    ```

- **Group**
  - **Purpose**: Visual grouping of elements.
  - **Notation rule**: Drawn with a **solid dashed black line**.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0.25,0],[1,0.5,0],[1,0.75,0],[0.75,1,0],[0.5,1,0],[0.25,1,0],[0,0.75,0],[0,0.5,0],[0,0.25,0]];rounded=1;dashed=1;dashPattern=5 2 1 2;labelPosition=center;verticalLabelPosition=middle;align=center;verticalAlign=middle;fontSize=8;html=1;whiteSpace=wrap;
    ```

## Sources

- `Development Rules&References/BPMN/Reference/BPMN 2 0 Getting Started Guide.pdf`
- `Development Rules&References/BPMN/Reference/Introduction to BPMN.pdf`

