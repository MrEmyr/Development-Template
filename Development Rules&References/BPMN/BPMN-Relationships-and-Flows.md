# BPMN — Relationships / Flows (Reference)

In BPMN documentation, relationships are often described as **flows** (e.g., Sequence Flow, Message Flow) and **associations**.

## Flow vs Association

- **Flow**: Connects BPMN flow objects to describe execution order or cross-participant messaging.
- **Association**: Connects artifacts (data objects/annotations) to flow objects to add context.

## Sequence Flow

- **Definition**: Shows the **order** in which activities are performed within a process (between events, activities, and gateways).
- **Usage**: Typically used **within a Pool** to represent the process logic.
- **BPMN rules (shape selection)**:
  - **Scope**: Sequence Flow **must not cross Pool boundaries** (use **Message Flow** between Pools).
  - **Conditions**: Conditions belong to the **outgoing sequence flow** (not the gateway shape).
  - **Event-Based Gateways**: Do **not** put conditional/default markers on flows leaving an **Event-Based Gateway** (its branching is determined by events).
- **Common variants**:
  - **Normal**
    - **Meaning**: Standard control-flow connection (solid line with solid arrowhead).
    - **Draw.io style reference (example shape style)**:
      ```text
      edgeStyle=elbowEdgeStyle;fontSize=12;html=1;endArrow=blockThin;endFill=1;rounded=0;
      ```
  - **Default**
    - **Meaning**: Fallback path taken when no other outgoing conditions evaluate true (shown with a **slash** marker at the source).
    - **Rule**: Typically used on an outgoing flow from an **Exclusive (XOR)** or **Inclusive (OR)** gateway (and only one default per gateway).
    - **Draw.io style reference (example shape style)**:
      ```text
      edgeStyle=elbowEdgeStyle;fontSize=12;html=1;endArrow=blockThin;endFill=1;startArrow=dash;startFill=0;endSize=6;startSize=6;rounded=0;
      ```
  - **Conditional**
    - **Meaning**: Path taken when a condition evaluates true (shown with a **diamond** marker at the source).
    - **Rule**: Used on flows leaving a **decision point** (commonly XOR/OR gateways, sometimes activities with conditional branching).
    - **Draw.io style reference (example shape style)**:
      ```text
      edgeStyle=elbowEdgeStyle;fontSize=12;html=1;endArrow=blockThin;endFill=1;startArrow=diamondThin;startFill=0;endSize=6;startSize=10;rounded=0;
      ```

## Message Flow

- **Definition**: Shows the flow of information as **messages between participants**.
- **Usage**:
  - Connects **two Pools** (participants) or elements within them.
  - Used for **cross-participant** communication (not for ordering steps within a single pool).
- **BPMN rules (shape selection)**:
  - **Scope**: Message Flow is used **between Pools** (participants). It is **not** used inside a single Pool to represent execution order.
  - **Semantics**: Represents communication; it does **not** imply sequence/order inside either participant.
  - **Notation**: Commonly shown as a **dashed line** with an **open arrowhead** (and often an envelope marker depending on tooling).
- **Draw.io style reference (example shape style)**:
  ```text
  dashed=1;dashPattern=8 4;endArrow=blockThin;endFill=1;startArrow=oval;startFill=0;endSize=6;startSize=4;html=1;rounded=0;
  ```

- **Initating Message flow with Decorator**
  - **Draw.io style reference (edge style)**:
    ```text
    endArrow=blockThin;html=1;labelPosition=left;verticalLabelPosition=middle;align=right;verticalAlign=middle;dashed=1;dashPattern=8 4;endFill=0;startArrow=oval;startFill=0;endSize=6;startSize=4;rounded=0;
    ```
  - **Draw.io style reference (decorator / envelope)**:
    ```text
    shape=message;html=1;outlineConnect=0;labelPosition=left;verticalLabelPosition=middle;align=right;verticalAlign=middle;spacingRight=5;labelBackgroundColor=#ffffff;
    ```

- **Non-Initating Message flow with Decorator**
  - **Draw.io style reference (edge style)**:
    ```text
    endArrow=blockThin;html=1;labelPosition=left;verticalLabelPosition=middle;align=right;verticalAlign=middle;dashed=1;dashPattern=8 4;endFill=0;startArrow=oval;startFill=0;endSize=6;startSize=4;rounded=0;
    ```
  - **Draw.io style reference (decorator / envelope)**:
    ```text
    shape=message;html=1;outlineConnect=0;labelPosition=left;verticalLabelPosition=middle;align=right;verticalAlign=middle;spacingRight=5;labelBackgroundColor=#ffffff;fillColor=#C0C0C0;
    ```

## Association

- **Definition**: Used to associate information (Artifacts such as **Data Objects** or **Annotations**) with Flow Objects.
- **Usage**: Often used to attach data/artifacts to activities.
- **BPMN rules (shape selection)**:
  - **No control-flow**: Associations do **not** affect execution order.
  - **Usage**: Use to connect **Artifacts** (annotations, data objects, groups) to flow objects for context.
  - **Direction**: Can be **undirected**, **unidirectional**, or **bidirectional** (tooling-specific rendering).
- **Draw.io style reference (example shape style)**:
  ```text
  edgeStyle=elbowEdgeStyle;fontSize=12;html=1;endFill=0;startFill=0;endSize=6;startSize=6;dashed=1;dashPattern=1 4;endArrow=none;startArrow=none;rounded=0;
  ```

- **Directional Association**
  - **Draw.io style reference (example shape style)**:
    ```text
    edgeStyle=elbowEdgeStyle;fontSize=12;html=1;endFill=0;startFill=0;endSize=6;startSize=6;dashed=1;dashPattern=1 4;endArrow=openThin;startArrow=none;rounded=0;
    ```

- **Bi-Directional Association**
  - **Draw.io style reference (example shape style)**:
    ```text
    edgeStyle=elbowEdgeStyle;fontSize=12;html=1;endFill=0;startFill=0;endSize=6;startSize=6;dashed=1;dashPattern=1 4;endArrow=openThin;startArrow=openThin;rounded=0;
    ```

- **Data Association**
  - **Draw.io style reference (example shape style)**:
    ```text
    edgeStyle=elbowEdgeStyle;fontSize=12;html=1;endFill=0;startFill=0;endSize=6;startSize=6;dashed=1;dashPattern=1 4;endArrow=none;startArrow=none;rounded=0;
    ```

- **Conversation Link**
  - **Draw.io style reference (example shape style)**:
    ```text
    edgeStyle=elbowEdgeStyle;fontSize=12;html=1;shape=link;rounded=0;
    ```

## Sources

- `Development Rules&References/BPMN/Reference/BPMN Complete Elements Poster.pdf`
- `Development Rules&References/BPMN/Reference/BPMN 2 0 Getting Started Guide.pdf`
- `Development Rules&References/BPMN/Reference/Introduction to BPMN.pdf`

