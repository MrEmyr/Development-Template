# Archimate Rules for Solution Architecture Diagrams

These rules define how Archimate-style solution architecture diagrams must be created and maintained for this solution.

## 1. General Principles

- Use **Archimate concepts and layers** (Business, Application, Technology, Motivation, Implementation & Migration) where applicable.
- Create and maintain all solution architecture diagrams in **Draw.io** and store them under `Documentation` using **relative paths**.
- Each diagram must have a **title**, **version/date**, and **owner** noted in an annotation or legend.

## 2. Layering and Viewpoints

- Separate **Business**, **Application**, and **Technology** concerns into distinct views when diagrams would otherwise become cluttered.
- Use appropriate viewpoints (e.g. Application Cooperation, Infrastructure, Implementation & Migration) to answer specific stakeholder questions.
- Clearly indicate any cross-layer relationships (e.g. business process realized by application services).

## 3. Elements and Relationships

- Use consistent shapes and colors for each Archimate layer and element type.
- Only use **valid relationships** between elements (e.g. "serves", "realizes", "accesses", "composes") in line with Archimate guidance.
- Label relationships where the meaning is not obvious from context.

## 4. Naming and Clarity

- Name components/services using clear, stable names that match implementation or documentation where possible.
- Group related elements using **grouping** or **views** rather than overcrowding a single diagram.
- Avoid line crossings and excessive overlaps; prefer orthogonal routing and spacing.

## 5. Versioning and Governance

- Maintain a simple **version history** in the diagram legend or in the associated architecture documentation.
- Keep architecture diagrams **up to date for each development interval**, reflecting new or changed components and integrations.
- Archive superseded diagrams in `Documentation/Archive`, mirroring the active folder structure.
