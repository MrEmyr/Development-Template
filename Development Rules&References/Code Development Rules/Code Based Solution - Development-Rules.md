# Development Rules

These rules are derived from the `Development Rules` and related notes in `Cursor Setup.drawio`.

## Core Requirements

- **Solution Design Documentation and Solution Planning Document must be created first** before implementation work begins.
- **Create a Draw.io solution architecture diagram** as part of the Solution Design documentation.
- **All warnings and errors must be resolved**; do not leave them unaddressed in code, build output, or tooling.
- **Create “next development” documentation** and remove entries from it as soon as testing for that work is complete.
- **Solution Design, Solution Planning, and the Solution Architecture diagram must be kept up to date** at each development interval.
- **Maintain an ongoing TODO list** once development commences (see `TODO.md`).

## Relative Paths

- Where paths are necessary in code or scripts, **only use relative paths** within the solution.
- Avoid embedding absolute machine-specific paths in source or configuration.
