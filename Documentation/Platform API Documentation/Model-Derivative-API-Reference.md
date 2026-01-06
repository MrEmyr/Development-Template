# Model Derivative API Reference (Project Usage)

This document captures how **this solution** can use the Autodesk **Model Derivative API** and links to the official references.

## 1. Official Documentation

Always treat the official APS docs as the source of truth:

- **Model Derivative API v2 reference**: [Model Derivative API Reference](https://aps.autodesk.com/en/docs/model-derivative/v2/reference/)
- **Model Derivative overview**: [Model Derivative Overview](https://aps.autodesk.com/en/docs/model-derivative/v2/overview/)

These define supported input formats, output formats, and all available endpoints.

## 2. API Overview

The Model Derivative API lets you:

- Translate design files into viewable formats (SVF2, etc.) for embedding in viewers.
- Extract metadata, object hierarchies, and properties from supported design files.
- Generate thumbnails for quick visual previews.

Typical use cases for this solution:

- Preparing models for viewing in a web UI.
- Extracting object properties for coordination, reporting, or integration with other systems.
- Generating thumbnails or lightweight representations for dashboards.

## 3. Authentication

The Model Derivative API uses **APS OAuth 2.0**.

For this solution, document (without secrets):

- Which OAuth flows are used (two‑legged, three‑legged).
- Required scopes (for example, combinations of `data:read`, `data:write`, `viewables:read`, depending on usage).
- How tokens are obtained and refreshed (see `APS-Authentication-Guide.md`).

> Do **not** hardcode client IDs, secrets, or tokens in this file or in source code. Use environment variables or a secure secret store.

## 4. Core Concepts

Summarize the main entities relevant to this solution:

- **URN / Base64‑encoded URN**
  - Identifies the source design file in object storage.
- **Derivatives**
  - Translated outputs (viewables, metadata, thumbnails) produced from a source file.
- **Manifests**
  - Describe the current state of translation jobs and available derivatives.

Add detail here for how URNs are obtained (e.g. via Data Management API) and which derivative types this solution cares about.

## 5. Operations Implemented in This Solution

List and describe specific Model Derivative operations your code performs:

- Operation: _e.g. “Request translation of RVT file to SVF2 for web viewing”_  
  - Endpoint(s) and HTTP methods:  
  - Input parameters (e.g. URN, output formats, views):  
  - Expected outputs and how they are used:  

Examples of common patterns:

- Submitting translation jobs.
- Polling manifests until translation completes.
- Retrieving metadata (object tree and properties).
- Fetching thumbnails.

## 6. Environment and Configuration

_To be filled in when concrete usage is defined._

- Source storage locations / URN origins (e.g. Data Management buckets, ACC projects).
- Output formats and views used (2D/3D, discipline-specific views, etc.).
- Any conventions for naming or tracking jobs.

Use **relative paths** for any local configuration files referenced from this solution.

## 7. Error Handling, Limits, and Performance

_To be refined once implementation exists._

- Common error codes (e.g. 400/401/403/404/409/429/5xx) and how they are handled.
- Handling translation failures and retry strategies.
- Polling/backoff strategy when checking manifests.
- Logging approach (avoid logging sensitive or large payloads unnecessarily).

## 8. Security Considerations

- Store APS credentials and tokens outside of source control (environment variables or a secret manager).
- Restrict scopes and access to the minimum required for this solution.
- Validate and sanitize any external input that influences which URNs or derivatives are requested.
- Ensure all communication with APS endpoints uses HTTPS.
