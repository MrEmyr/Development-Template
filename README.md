Project Template - Solution Root
================================

This workspace follows the structure and rules defined in `Cursor Setup.drawio`.

Folders
-------

- `Development Rules&References/` – Rules, references, and templates (e.g. BPMN/Archimate notes, API references, coding rules).
- `Documentation/` – Solution-specific development documentation (created/maintained per project).
  - `Archive/` – Archived/superseded development documentation, mirroring the active `Documentation/` structure.
- `Solution/` – Main solution implementation (services, APIs, automation, etc.).
- `UI/` – User interface implementation and UI assets.
- `Other/` – Any supporting artifacts that don’t fit elsewhere.
- `scripts/` – Deployment and testing scripts.

Key Process Rules (from Draw.io)
--------------------------------

- Solution Design Documentation and Solution Planning Document must be created first.
- A Draw.io solution architecture diagram must be part of the solution design documentation.
- All warnings and errors in the solution should be resolved, not ignored.
- Use a consolidated documentation approach instead of creating many one-off documents.
- All diagrams should be created and maintained in Draw.io.
- Solution Design, Solution Planning, and the Solution Architecture diagram must be kept up to date for each development interval.
- Version control must be set up and used for all deployments.
- Increment the solution version at each deployment.
- Use a single deployment script for every deployment; that script must:
  - Verify that nothing is open/locked that would block deployment.
  - Perform post-deployment checks to verify the deployment.
- Perform a Git commit/update as part of each deployment.
- Do not create separate “deployment verification” documents; reflect verification in chat or your tracking system instead.
- Create and maintain:
  - A Development Plan.
  - A Deployment Plan (kept up to date each development cycle).
  - An ongoing TODO list once development starts.
- Create a smoke test command/script that tests all elements created in the sprint.
- Where paths are necessary, only use relative paths inside the solution.

Working Docs
------------

- See `Development Rules&References/` for detailed rule/reference documents and templates.
- See `Documentation/` for solution-specific design/planning docs created during implementation.
- See `scripts/deploy.ps1` for the deployment script skeleton.
- See `scripts/smoke-test.ps1` for the smoke test command skeleton.
