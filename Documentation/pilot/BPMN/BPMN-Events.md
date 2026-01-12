# BPMN — Events (Reference)

## Event concept

- **Event**
  - **Definition**: An Event is **something that happens** during the course of a business process and affects the flow.
  - **Marker**: Events typically show a **trigger or result** using a marker inside the event symbol.

## Event types (by when they affect flow)

- **Start Event**
  - **Purpose**: Indicates where a Process starts (often because something has happened, e.g., a message received or a date reached).
  - **Notation**: Circle with a **thin border**.
  - **Interrupting vs Non-Interrupting**:
    - **Interrupting** start events (default) interrupt the containing scope when they trigger.
    - **Non-interrupting** start events are commonly used for **Event Sub-Processes** (they do not interrupt the containing scope).

## Start Event variants

- **Start**
  - **Purpose**: Unspecified trigger start.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=standard;symbol=general;
    ```

- **Message Start (Interrupting)**
  - **Purpose**: Starts on receipt of a message (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=standard;symbol=message;
    ```

- **Message Start (Non-Interrupting)**
  - **Purpose**: Starts on receipt of a message (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventNonint;symbol=message;
    ```

- **Timer Start (Interrupting)**
  - **Purpose**: Starts based on a time condition (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=standard;symbol=timer;
    ```

- **Timer Start (Non-Interrupting)**
  - **Purpose**: Starts based on a time condition (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventNonint;symbol=timer;
    ```

- **Escalation Start (Interrupting)**
  - **Purpose**: Starts on escalation trigger (interrupting). **BPMN note**: Escalation start events are typically used for **Event Sub-Processes**.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventInt;symbol=escalation;
    ```

- **Escalation Start (Non-Interrupting)**
  - **Purpose**: Starts on escalation trigger (non-interrupting). **BPMN note**: Non-interrupting starts are typically used for **Event Sub-Processes**.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventNonint;symbol=escalation;
    ```

- **Error Start (Interrupting)**
  - **Purpose**: Starts on an error trigger (interrupting). **BPMN note**: Error start events are used for **Event Sub-Processes** and are **always interrupting**.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventInt;symbol=error;
    ```

- **Compensation Start (Interrupting)**
  - **Purpose**: Starts on compensation trigger (interrupting). **BPMN note**: Compensation start events are used for **Event Sub-Processes** and are **always interrupting**.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventInt;symbol=compensation;
    ```

- **Conditional Start (Interrupting)**
  - **Purpose**: Starts when a condition becomes true (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=standard;symbol=conditional;
    ```

- **Conditional Start (Non-Interrupting)**
  - **Purpose**: Starts when a condition becomes true (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventNonint;symbol=conditional;
    ```

- **Signal Start (Interrupting)**
  - **Purpose**: Starts on receipt of a signal (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=standard;symbol=signal;
    ```

- **Signal Start (Non-Interrupting)**
  - **Purpose**: Starts on receipt of a signal (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventNonint;symbol=signal;
    ```

- **Multiple Start (Interrupting)**
  - **Purpose**: Starts based on one of multiple possible triggers (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=standard;symbol=multiple;
    ```

- **Multiple Start (Non-Interrupting)**
  - **Purpose**: Starts based on one of multiple possible triggers (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventNonint;symbol=multiple;
    ```

- **Parallel Multiple Start (Interrupting)**
  - **Purpose**: Starts when multiple triggers occur (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventInt;symbol=parallelMultiple;
    ```

- **Parallel Multiple Start (Non-Interrupting)**
  - **Purpose**: Starts when multiple triggers occur (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=eventNonint;symbol=parallelMultiple;
    ```

- **Intermediate Event**
  - **Purpose**: Occurs between Start and End; affects flow but does not start/end it.
  - **Notation**: Circle with a **double-line border**.
  - **Throwing vs Catching**: Intermediate events may be throwing or catching (affects available markers in many stencil tools).
  - **Boundary rule**: **Boundary events are always catching** (they react to something happening) and are **never throwing**.

## Intermediate Event variants

- **None Intermediate (Throwing)**
  - **Purpose**: Unspecified trigger/result intermediate event (throwing).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=throwing;symbol=general;
    ```

- **Message Intermediate (Throwing)**
  - **Purpose**: Message intermediate event (throwing).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=throwing;symbol=message;
    ```

- **Message Intermediate (Catching)**
  - **Purpose**: Message intermediate event (catching).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=catching;symbol=message;
    ```

- **Message Intermediate Boundary (Interrupting)**
  - **Purpose**: Boundary message event attached to an activity (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundInt;symbol=message;
    ```

- **Message Intermediate Boundary (Non-Interrupting)**
  - **Purpose**: Boundary message event attached to an activity (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundNonint;symbol=message;
    ```

- **Timer Intermediate (Catching)**
  - **Purpose**: Timer intermediate event (catching).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=catching;symbol=timer;
    ```

- **Timer Intermediate Boundary (Interrupting)**
  - **Purpose**: Boundary timer event attached to an activity (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundInt;symbol=timer;
    ```

- **Timer Intermediate Boundary (Non-Interrupting)**
  - **Purpose**: Boundary timer event attached to an activity (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundNonint;symbol=timer;
    ```

- **Escalation Intermediate (Throwing)**
  - **Purpose**: Throws an escalation during process flow (throwing).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=throwing;symbol=escalation;
    ```

- **Escalating Intermediate Boundary (Interrupting)**
  - **Purpose**: Boundary escalation intermediate event (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundInt;symbol=escalation;
    ```

- **Escalating Intermediate Boundary (Non-Interrupting)**
  - **Purpose**: Boundary escalation intermediate event (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundNonint;symbol=escalation;
    ```

- **Error Intermediate Boundary (Interrupting)**
  - **Purpose**: Boundary error intermediate event (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundInt;symbol=error;
    ```

- **Compensation Intermediate (Throwing)**
  - **Purpose**: Compensation intermediate event (throwing).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=throwing;symbol=compensation;
    ```

- **Compensation Intermediate (Catching)**
  - **Purpose**: Compensation intermediate event (catching).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=catching;symbol=compensation;
    ```

- **Compensation Intermediate Boundary (Non-Interrupting)**
  - **Purpose**: Boundary compensation intermediate event attached to an activity (**non-interrupting**). **BPMN note**: Compensation boundary events are **non-interrupting by definition**.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundNonint;symbol=compensation;
    ```

- **Link Intermediate (Catching)**
  - **Purpose**: Link intermediate event (catching).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=catching;symbol=link;
    ```

- **Link Intermediate (Throwing)**
  - **Purpose**: Link intermediate event (throwing).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=throwing;symbol=link;
    ```

- **Signal Intermediate (Catching)**
  - **Purpose**: Signal intermediate event (catching).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=catching;symbol=signal;
    ```

- **Signal Intermediate (Throwing)**
  - **Purpose**: Signal intermediate event (throwing).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=throwing;symbol=signal;
    ```

- **Signal Intermediate Boundary (Interrupting)**
  - **Purpose**: Boundary signal intermediate event (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundInt;symbol=signal;
    ```

- **Signal Intermediate Boundary (Non-Interrupting)**
  - **Purpose**: Boundary signal intermediate event (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundNonint;symbol=signal;
    ```

- **Multiple Intermediate (Catching)**
  - **Purpose**: Multiple intermediate event (catching).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=catching;symbol=multiple;
    ```

- **Multiple Intermediate (Throwing)**
  - **Purpose**: Multiple intermediate event (throwing).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=throwing;symbol=multiple;
    ```

- **Multiple Intermediate Boundary (Interrupting)**
  - **Purpose**: Boundary multiple intermediate event (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundInt;symbol=multiple;
    ```

- **Multiple Intermediate Boundary (Non-Interrupting)**
  - **Purpose**: Boundary multiple intermediate event (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundNonint;symbol=multiple;
    ```

- **Parallel Multiple Intermediate (Catching)**
  - **Purpose**: Parallel multiple intermediate event (catching).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=catching;symbol=parallelMultiple;
    ```

- **Parallel Multiple Intermediate Boundary (Interrupting)**
  - **Purpose**: Boundary parallel multiple intermediate event (interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundInt;symbol=parallelMultiple;
    ```

- **Parallel Multiple Intermediate Boundary (Non-Interrupting)**
  - **Purpose**: Boundary parallel multiple intermediate event (non-interrupting).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundNonint;symbol=parallelMultiple;
    ```

- **Cancel Intermediate Boundary (Interrupting)**
  - **Purpose**: Boundary cancel intermediate event (interrupting). **BPMN note**: Cancel boundary events are only valid on **Transaction** activities.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=boundInt;symbol=cancel;
    ```

- **End Event**
  - **Purpose**: Indicates where a Process ends; usually has a **result**.
  - **Notation**: Circle with a **thick border**.

## End Event variants

- **End**
  - **Purpose**: Unspecified result end.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=end;symbol=terminate2;
    ```

- **Message End**
  - **Purpose**: Ends by sending/throwing a message.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=end;symbol=message;
    ```

- **Escalation End**
  - **Purpose**: Ends by throwing an escalation.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=end;symbol=escalation;
    ```

- **Error End**
  - **Purpose**: Ends by throwing an error.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=end;symbol=error;
    ```

- **Compensation End**
  - **Purpose**: Ends by triggering compensation.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=end;symbol=compensation;
    ```

- **Signal End**
  - **Purpose**: Ends by throwing a signal.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=end;symbol=signal;
    ```

- **Multiple End**
  - **Purpose**: Ends by throwing one of multiple possible results.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=end;symbol=multiple;
    ```

- **Cancel End**
  - **Purpose**: Ends by canceling. **BPMN note**: Cancel end events are only valid inside a **Transaction Sub-Process**.
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=end;symbol=cancel;
    ```

- **Terminate**
  - **Purpose**: Immediately terminates the process (and typically all contained activity).
  - **Draw.io style reference (example shape style)**:
    ```text
    points=[[0.145,0.145,0],[0.5,0,0],[0.855,0.145,0],[1,0.5,0],[0.855,0.855,0],[0.5,1,0],[0.145,0.855,0],[0,0.5,0]];shape=mxgraph.bpmn.event;html=1;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;align=center;perimeter=ellipsePerimeter;outlineConnect=0;aspect=fixed;outline=end;symbol=terminate;
    ```

## Sources

- `Development Rules&References/BPMN/Reference/BPMN 2 0 Getting Started Guide.pdf`
- `Development Rules&References/BPMN/Reference/Introduction to BPMN.pdf`

