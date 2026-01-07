# AEC Data Model API Reference (Project Usage)

This document captures how **this solution** can use the Autodesk **AEC Data Model API** and links to the official references.

## 1. Official Documentation

Always treat the official APS docs as the source of truth:

- **AEC Data Model API reference**: [AEC Data Model API Reference](https://aps.autodesk.com/en/docs/aecdatamodel/v1/reference/)
- **AEC Data Model API overview**: [AEC Data Model Overview](https://aps.autodesk.com/developer/overview/aec-data-model-api)
- **AEC Data Model technical resources**: [AEC Data Model Technical Resources](https://aps.autodesk.com/blog/aec-data-model-api-technical-resources)

These define the GraphQL schema, available queries and mutations, authorization requirements, and usage limits.

## 2. API Overview

The AEC Data Model API provides a **GraphQL interface** to granular design data stored in Autodesk Docs / ACC without requiring desktop plug‑ins.

Key characteristics:

- Access to hubs, projects, folders, files, models, elements, and parameters.
- GraphQL queries that can traverse relationships between these entities.
- Focus on read‑oriented scenarios such as reporting, analysis, and automation.

Typical use cases for this solution:

- Querying model elements and parameters for QA/QC or reporting.
- Driving dashboards and analytics based on live design data.
- Automating checks across multiple projects/models.

## 3. Authentication

The AEC Data Model API uses **APS OAuth 2.0** (same as ACC/Data Management APIs).

For this solution, document here (without secrets):

- Which OAuth flow(s) are used (two‑legged, three‑legged).
- Required scopes (refer to the AEC Data Model reference and APS OAuth docs).
- How tokens are obtained and refreshed (see `APS-Authentication-Guide.md`).

> Do **not** hardcode client IDs, secrets, or tokens in this file or in source code. Use environment variables or a secure secret store.

## 4. Data Model Concepts

Summarize how the key AEC Data Model concepts map to your domain. Examples:

- **Hub / Account**
  - Represents the ACC/Docs account that owns the data.
- **Project**
  - Container for models and documents; maps to your internal project concept.
- **File / Model**
  - Represents an authored model (e.g. Revit 2024+).
- **Element**
  - Individual model element (e.g. wall, pipe, equipment) exposed via the GraphQL schema.
- **Parameter**
  - Property attached to elements; can be standard or custom parameters.

Add detail here for the specific hubs, projects, models, and parameter sets that matter to this solution.

## 5. GraphQL Operations Implemented in This Solution

List and describe the specific queries/mutations your code uses:

- Operation: _e.g. “List all mechanical equipment elements with missing asset IDs”_  
  - GraphQL operation name:  
  - Variables:  
  - Expected result shape:  
  - How results are used (reports, validations, sync to other systems):  

Repeat for each significant report, check, or integration scenario.

## 6. Environment and Activation

Notes to capture for this project (to be filled in when known):

- Which ACC account(s) and projects have AEC Data Model activated.
- Which models (e.g. Revit 2024+) are published and available to the API.
- Any prerequisites or configuration steps required by Account Admins.

Use **relative paths** for any local configuration or schema files referenced from this solution.

## 7. Error Handling, Limits, and Performance

_To be refined once implementation exists._

- Common error cases (e.g. insufficient permissions, model not activated, invalid queries).
- Rate limits and recommended throttling/backoff strategy (see official docs).
- Pagination and batching strategy for large result sets.
- Logging approach (avoid logging sensitive or personally identifiable information).

## 8. Security Considerations

- Store APS credentials and tokens outside of source control (environment variables or secret manager).
- Restrict scopes and project access to the minimum required.
- Validate and sanitize any external input that influences GraphQL queries to avoid unintended data access.
- Ensure all communication with APS endpoints uses HTTPS.
