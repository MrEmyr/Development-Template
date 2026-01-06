# Deployment Rules

These rules are derived from the `Deployment Rules` and `Further Rules` in `Cursor Setup.drawio`.

## Version Control
- **Version control must be set up and used for all deployments.**
- **Increment the solution version at each deployment.**
- **Perform a Git commit/update for every deployment**, capturing what is being deployed.

## Deployment Script
- Check for blockers before deployment (e.g. files in use, required services stopped).
- Use **one single deployment script** for each deployment (see `scripts/deploy.ps1`).
- The deployment script must:
  - **Verify that nothing is open or locked that would block deployment**, and terminate if there is a block.
  - **Carry out deployment checks post-deployment** to ensure the deployment was successful.
- **Do not create separate deployment verification documentation**; instead, reflect verification details in chat or your tracking system.

## Planning
- Maintain a **Deployment Plan** that is kept up to date at each development cycle.
- Keep the **Development Plan and Deployment Plan aligned** as new functionality is identified.

## Planning and Tracking
- Do **not create separate deployment verification documents**; instead, capture outcomes in chat or your chosen tracking system.
- **Create a Development Plan** and keep it up to date each development cycle.
- **Keep a Deployment Plan** and update it as new functionality is identified.
- Once development commences, **maintain an ongoing TODO list** (see `TODO.md`).

## Scripts and Checks
- The deployment script must:
  - Perform **post-deployment checks** to ensure the deployment is correct.