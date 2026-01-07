# Webhooks API Reference (Project Usage)

This document captures how **this solution** can use the Autodesk **Webhooks API** and links to the official references.

## 1. Official Documentation

Always treat the official APS docs as the source of truth:

- **Webhooks API v1 reference**: [Webhooks API Reference](https://aps.autodesk.com/en/docs/webhooks/v1/reference/)
- **Webhooks overview**: [Webhooks Overview](https://aps.autodesk.com/developer/overview/webhooks)

These define available event types, payload formats, and management endpoints.

## 2. API Overview

The Webhooks API lets you:

- Subscribe to **events** from supported APS services (e.g. Data Management, ACC, BIM 360).
- Receive **HTTP callbacks** when subscribed events occur.
- Manage webhook registrations (create, list, update, delete).

Typical use cases for this solution:

- Triggering workflows when files, issues, or models change.
- Keeping external systems in sync with ACC/Data Management events.

## 3. Authentication

The Webhooks API uses **APS OAuth 2.0**.

For this solution, document (without secrets):

- Which OAuth flows are used (two‑legged, three‑legged).
- Required scopes for the services whose events you subscribe to.
- How tokens are obtained and refreshed (see `APS-Authentication-Guide.md`).

> Do **not** hardcode client IDs, secrets, or tokens in this file or in source code. Use environment variables or a secure secret store.

## 4. Core Concepts

Summarize how key Webhooks concepts map to your domain:

- **System / Scope**
  - The APS service and scope of events (e.g. Data Management hub/project).
- **Webhook Subscription**
  - Configuration object specifying event type(s), target URL, and filters.
- **Event Payload**
  - JSON payload delivered to your endpoint when an event occurs.

Add detail here once you know which systems, scopes, and event types this solution will use.

## 5. Operations Implemented in This Solution

List and describe specific Webhooks operations your code performs:

- Operation: _e.g. “Subscribe to ACC issue created/updated events”_  
  - Endpoint(s) and HTTP methods:  
  - Configuration (event types, scope, filters):  
  - Expected payloads and follow‑up actions:  

Examples of common patterns:

- Creating subscriptions during deployment or initialization.
- Validating and renewing subscriptions.
- Cleaning up subscriptions when no longer needed.

## 6. Receiving and Handling Events

_To be filled in with implementation details._

- URL(s) that receive webhook callbacks.
- Expected headers and verification/validation steps.
- Idempotency and retry handling when duplicate or retried events are received.

Use **relative paths** for any local configuration files referenced from this solution.

## 7. Error Handling, Limits, and Security

_To be refined once implementation exists._

- Common error codes from Webhooks API and how they are handled.
- Event delivery guarantees, retries, and backoff behavior (consult official docs).
- Security rules:
  - Validate signatures/tokens on incoming webhook requests if provided.
  - Require HTTPS and strong authentication for your webhook endpoints.
  - Do not log sensitive data within event payloads.
