# Autodesk Platform Services (APS) Authentication Guide (Project Usage)

This document summarizes how **APS authentication** works and how this solution should use it, based on the official guide currently open in your browser.

## 1. Official Documentation

Always treat the official APS docs as the source of truth:

- **OAuth v2 Reference**: [APS OAuth 2.0 Reference](https://aps.autodesk.com/en/docs/oauth/v2/reference/)
- **Getting Started / Tutorials**: [APS Authentication Overview](https://aps.autodesk.com/en/docs/oauth/v2/overview/)

These define the supported OAuth flows, required parameters, token formats, scopes, and error responses.

## 2. APS OAuth Flows (Overview)

APS supports multiple OAuth 2.0 flows; the two most common are:

- **Two‑Legged OAuth (Client Credentials Grant)**
  - Used for **server‑to‑server** scenarios where no end‑user interaction is required.
  - Typical use: backend integrations, batch jobs, automation that acts on its own behalf.

- **Three‑Legged OAuth (Authorization Code Grant)**
  - Used when actions must be **performed on behalf of a specific user**.
  - Typical use: web apps or tools where end users sign in with their Autodesk account and grant access.

This solution should choose one or both flows depending on whether it needs user‑delegated permissions or only app‑level access.

## 3. Two‑Legged OAuth (Client Credentials)

High‑level steps (see the official reference for exact parameters):

1. **Register an APS app** in the APS portal and obtain:
   - Client ID
   - Client Secret
2. **Request a token** from the `/authentication/v2/token` endpoint using the `client_credentials` grant type.
3. **Include the returned access token** in the `Authorization: Bearer <token>` header when calling APS/ACC/Data Management APIs.

Guidance for this solution:

- Store client ID and client secret in a **secure location** (e.g. environment variables, secrets manager), not in source code.
- Scope tokens only to what is needed (e.g. read‑only vs. write scopes).
- Implement token caching and respect `expires_in`, refreshing tokens as needed instead of requesting on every call.

## 4. Three‑Legged OAuth (Authorization Code)

High‑level steps:

1. **User authorization**
   - Redirect the user to the Autodesk authorization URL with your client ID, requested scopes, and redirect URI.
   - User signs in and grants consent; Autodesk redirects back to your redirect URI with an **authorization code**.
2. **Token exchange**
   - Your backend exchanges the authorization code for an **access token** (and usually a **refresh token**) via `/authentication/v2/token` using the `authorization_code` grant type.
3. **Token usage and refresh**
   - Use the access token in the `Authorization` header for API calls on behalf of the user.
   - When the access token expires, exchange the refresh token for a new access token using the `refresh_token` grant type.

Guidance for this solution:

- The authorization code and refresh tokens must **never be exposed to the browser console or logs**.
- Store refresh tokens securely on the server side only.
- Use HTTPS for all redirects and token exchanges.

## 5. Scopes and Permissions

APS uses **scopes** to define what an access token can do.

For this solution, document:

- Which scopes are required (e.g. data:read, data:write, account:read, account:write, etc.).
- Which flows (two‑legged or three‑legged) use which scopes.
- Any least‑privilege decisions (e.g. separate apps or tokens for read vs. write operations).

Use the official scope tables in the APS docs to verify that each required API is covered by the selected scopes.

## 6. Token Storage, Rotation, and Security

Security‑critical rules for this solution:

- **Do not hardcode** client IDs, client secrets, or tokens in source code or configuration files under version control.
  - Use environment variables or a dedicated secret management service instead.
- Do **not log** client secrets, tokens, or full request/response payloads that may contain sensitive information.
- Implement **token rotation**:
  - Respect `expires_in` and refresh tokens before or when they expire.
  - Handle error responses such as invalid/expired tokens and re‑authenticate when necessary.
- Use **HTTPS** for all communication with APS endpoints.

## 7. Solution‑Specific Configuration

When this project is implemented, capture the following details here (without secrets):

- APS app name and environment(s) (e.g. dev, test, prod).
- OAuth flows used:
  - Two‑legged: ✅ / ❌
  - Three‑legged: ✅ / ❌
- Scopes used for each flow.
- Where secrets are stored (e.g. “Azure Key Vault”, “environment variables via deployment pipeline”).

Use **relative paths** for any local configuration files referenced from code or scripts.