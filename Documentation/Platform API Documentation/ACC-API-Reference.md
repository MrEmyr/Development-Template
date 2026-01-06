# Autodesk Construction Cloud (ACC) API Reference (Project Usage)

This document captures how **this solution** can use the Autodesk Construction Cloud (ACC) APIs and links to the official references.

## 1. Official Documentation

Always treat the official Autodesk documentation as the source of truth for the full, up‑to‑date API surface:

- **ACC v1 API reference**: [ACC v1 Reference](https://aps.autodesk.com/en/docs/acc/v1/reference/)
- **APS Authentication guide**: [APS OAuth 2.0 Authentication](https://aps.autodesk.com/en/docs/oauth/v2/reference/)
- **ACC API overview and guides**: [Autodesk Construction Cloud APIs Overview](https://aps.autodesk.com/developer/overview/autodesk-construction-cloud)

These sources define:
- Available endpoints, resource groups, and methods.
- Request/response schemas, rate limits, and quotas.
- Authentication and security requirements.

## 2. Available ACC APIs (Overview)

This section summarizes the major ACC v1 API areas and what they are used for. Use it as an index into the official reference above.

- **Accounts / Hubs**
  - Discover ACC accounts (hubs) available to the authenticated user.
  - Retrieve account metadata and settings.

- **Projects**
  - List and retrieve projects within an ACC account.
  - Access project metadata, status, and configuration.

- **Users and Companies**
  - Manage project members, roles, and company associations.
  - Retrieve user and company information for permissions and reporting.

- **Issues**
  - Create, read, update, and manage project issues.
  - Typical use: coordination, QA/QC, field issues tracking.

- **RFIs (Requests for Information)**
  - Manage RFIs, responses, and related metadata.
  - Typical use: design clarification workflows.

- **Submittals**
  - Manage submittal logs, items, and workflows (where available for the project).

- **Checklists / Forms**
  - Work with forms and checklist templates and instances.
  - Typical use: safety, quality, and inspection forms.

- **Cost Management**
  - Access cost items, budgets, contracts, and related financial data.
  - Typical use: budgeting, forecasting, and cost tracking integrations.

- **Assets**
  - Manage asset records, status, and location within a project.

- **Locations**
  - Work with location hierarchies (breakdown structures) used across issues, assets, etc.

- **Model Coordination / Clash (where applicable)**
  - Access model coordination results and clashes for automated workflows.

- **Field / Daily Logs (where applicable)**
  - Access daily log information such as manpower, equipment, and activities.

Not all APIs are available on every project; availability depends on project configuration and ACC product entitlements.

## 3. Authentication

ACC APIs are part of Autodesk Platform Services (APS) and use **OAuth 2.0** for authentication and authorization.

Record here once implementation is chosen:
- Which OAuth flow is used (e.g. 2‑legged server-to-server, 3‑legged user delegated).
- Where client credentials are stored (e.g. environment variables, secret manager).
- Required scopes for ACC endpoints this solution uses.

> Do **not** hardcode client IDs, secrets, or tokens in this file or in source code. Use environment variables or a secure secret store.

## 4. Project/Account Configuration

_To be filled in when concrete ACC usage is defined for this solution._

- Target hub(s) / account IDs:
- Target project IDs:
- Key services enabled on the target projects (Issues, Cost, Assets, etc.):

Use **relative paths** inside this repository for any local configuration files that relate to ACC usage.

## 5. ACC Data Model (Solution-Specific)

Document how ACC concepts map to your domain:

- Project:  
  - Purpose in this solution:  
  - Key properties used (e.g. status, location, start/end dates):  

- Issue:  
  - How issues are created/updated from this solution:  
  - Custom fields leveraged (locations, classifications, root causes, etc.):  

- Cost item / budget / contract:  
  - How financial data ties into this solution:  

Add subsections for any additional objects (RFIs, Assets, Forms, Locations, etc.) that this solution relies on.

## 6. Operations Implemented in This Solution

List and describe the specific operations your code performs against ACC:

- Operation: _e.g. “Sync issues from ACC to internal tracking system”_  
  - Endpoint(s) and HTTP methods:  
  - Input shape (path/query/body):  
  - Output / side effects:  

Repeat for each significant integration scenario (issues, RFIs, cost, assets, etc.).

## 7. Error Handling and Limits

_To be refined once implementation exists._

- Expected error codes and how they are handled (e.g. 400/401/403/404/429/5xx).
- Rate limit behavior and any backoff/retry strategy (consult ACC/APS limit docs).
- Logging approach (ensure **no sensitive data** such as tokens or PII is logged).

## 8. Security Considerations

- Store all APS/ACC credentials (client ID, secret, tokens) outside of source code (e.g. environment variables or secret manager).
- Do not log secrets or full payloads containing PII or commercially sensitive information.
- Validate and sanitize any data sent to ACC if it originates from external/user input.
- Restrict scopes and project access to the minimum required for this solution.