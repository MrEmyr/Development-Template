# Solution Testing Rules

These rules are derived from the `Solution Testing` notes in `Cursor Setup.drawio`.

## Smoke Testing

- **Create a smoke test command/script** that tests all elements created in the current sprint or development interval.
- The provided skeleton script `scripts/smoke-test.ps1` is the central place to implement these checks.

## Suggested Coverage

- Basic health checks for core services/APIs.
- Verification that key UI paths still load and behave as expected.
- Validation of any new or changed integration points.

## Maintenance

- Update the smoke tests whenever new functionality is added.
- Ensure the smoke test command is part of your deployment or post-deployment process. 
