# BPMN Rules for Process Maps

These rules define how Business Process Model and Notation (BPMN) diagrams must be created and maintained for this solution.

## 1. General Principles

- Use **BPMN 2.0 standard notation** for all process maps.
- Create and maintain all BPMN diagrams in **Draw.io** and store them under `Documentation` using **relative paths**.
- Each diagram must have a **title**, **version/date**, and **owner** noted in an annotation or legend.

## 2. Scope and Levels

- Model processes at a **consistent level of detail** within a single diagram.
- Use **high-level (Level 1) diagrams** for end-to-end flows and **Level 2+ diagrams** for detailed subprocesses.
- Link detailed subprocess diagrams from the parent diagram using **Call Activity** or explicit notes.

## 3. Notation Usage

- Use **Pools and Lanes** to represent organizations, systems, or roles.
- Start each process with a **Start Event** and end with one or more **End Events**.
- Use **Gateways** only for control-flow decisions (XOR/OR/AND) and label outgoing paths clearly.
- Use **Message Flows** only between different pools; use **Sequence Flows** within the same pool.
- Use **Artifacts** (Text Annotations, Groups) to clarify intent without overloading the diagram with text.

## 4. Naming and Clarity

- Name activities using **verb + noun** (e.g. "Validate request", "Create issue in ACC").
- Name events and gateways descriptively (e.g. "Error received from API", "Approved?").
- Avoid crossing lines; use waypoints or layout adjustments to keep diagrams readable.

## 5. Versioning and Governance

- Maintain a simple **version history** in the diagram legend or in the associated documentation.
- Update BPMN diagrams whenever the implemented process changes.
- Archive superseded diagrams in `Documentation/Archive`, mirroring the active folder structure.
