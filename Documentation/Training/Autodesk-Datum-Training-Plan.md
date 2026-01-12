### Datum360 — Training Plan (PIM360 / LiveView / ACL360 / CLS360)

### Audience & outcomes

- **Audience**: End users (PIM360/LiveView), data loaders, administrators (ACL360/CLS360), reporting users
- **Outcomes**: Learners can navigate Datum360, load and find data in PIM360, build views/reports in LiveView, and administer access and class libraries via ACL360/CLS360.

### Prerequisites

- **Required**: Basic understanding of your organization’s asset/tag naming and document conventions
- **Recommended**: Basic familiarity with access control concepts (roles/permissions)

### Scope note (based on the open help site)

- This plan is aligned to the Datum360 documentation site at `https://help.datum360.io/` and the modules it highlights: **PIM360**, **LiveView**, **ACL360**, **CLS360**.

---

## Chapter 0 — Data Management Basics (foundation)

### Objectives

- Define **data lifecycle**: create → load → validate → use → maintain → retire
- Understand **core terms**: tags, attributes, documents, classes, class library, metadata, reporting views
- Learn **governance**: ownership, stewardship, controlled vocabulary, change control
- Learn **quality dimensions**: accuracy, completeness, timeliness, consistency, uniqueness
- Learn **security**: least privilege, role-based access, auditability

### Activities

- **Mini-lab**: classify common tag fields (e.g., tag ID, area, system, status) by sensitivity and retention
- **Checkpoint**: short quiz (terms + scenarios)

---

## Module 1 — Datum360 Overview & Navigation

### Topics

- Product map: **PIM360** (core data), **LiveView** (views/reports), **ACL360** (access control), **CLS360** (classification/class library)
- Navigation overview (where common actions live)
- Terminology alignment: tag vs attribute vs class vs dataset/report

### Lab

- Log in and complete a “guided tour” checklist: locate search, tag browsing, class library, and reporting entry points.

---

## Module 2 — ACL360 (Administrator): Access Control Administration

### Topics

- ACL360 introduction and accessing ACL360
- Building/maintaining roles and permissions
- Practical access patterns (who can load data, who can edit classes, who can view reports)

### Lab

- Create a minimal role set (Admin, Data Loader, Viewer) and validate permissions by attempting key actions.

---

## Module 3 — CLS360 (Administrator): Classification & Objects

### Topics

- CLS360 introduction and “overview of CLS360 objects” (as defined by your instance)
- How classes and attributes support consistent tag data
- Change control (how to propose/approve class changes)

### Lab

- Review existing classes and identify one improvement (naming/field constraints). Document the change proposal.

---

## Module 4 — Class Libraries (Administrator)

### Topics

- Creating a class library
- Managing class libraries (versioning/governance approach)
- Icon types (where used and why consistency matters)

### Lab

- Create or extend a class library with one new class and a consistent icon type scheme; validate it appears correctly where expected.

---

## Module 5 — CLS360 Reporting (Administrator)

### Topics

- CLS360 reporting overview
- Operational reporting: “what changed, by whom, and when” (audit intent)
- Admin dashboards/checklists (weekly hygiene)

### Lab

- Produce a small admin report (classes changed in last 30 days) and store it as part of an admin runbook.

---

## Module 6 — User Access & Searching (PIM360)

### Topics

- User access basics (who can see/edit what) using the ACL360 roles created earlier
- Searching in PIM360: search patterns, filters, saved searches (if available)
- Finding tag records and related data

### Lab

- Search for a known tag, open its record, and validate you can (or cannot) edit fields based on your role.

---

## Module 7 — Viewing Tag Data (PIM360)

### Topics

- Tag record structure and common field types
- Interpreting status fields and lifecycle states
- Linking/associations (documents, related tags, or other objects as applicable)

### Lab

- Open a tag, identify required fields, and verify completeness against a simple checklist.

---

## Module 8 — Loading Data to PIM360 (Data Files)

### Topics

- Creating data files for import
- Validation expectations before load (schema/format conventions)
- Load execution, error handling, and correction workflow

### Lab

- Prepare a small data file (sample CSV), perform a load, review results, correct one error, and re-load.

---

## Module 9 — LiveView: Custom Views & Reports

### Topics

- Building custom views and reports in LiveView
- Filtering and grouping patterns for common operations reporting
- Sharing/permissions for reports (consumer vs editor)

### Lab

- Create a LiveView report that lists tags by status and area, export/share it, and validate access with a consumer account.

---

## Capstone — Clash Detection Data Loop (contextual)

### Scenario

Use a simplified, end-to-end scenario aligned to delivery workflows:
load tag updates → validate completeness → report status in LiveView → ensure correct access via ACL360 → keep classes consistent via CLS360.

### Deliverables

- One successful data load (with an error corrected and reloaded)
- One LiveView report shared to a viewer role
- Documented access model (roles + responsibilities)
- Class library governance note (how changes are requested/approved)

---

## Suggested delivery format & timeline

### Track A — Users (PIM360 + LiveView) (0.5–1 day)

- Modules: 0–5 + capstone

### Track B — Data Loaders (1 day)

- Modules: 0–4 + targeted LiveView reporting (Module 5) + capstone

### Track C — Administrators (ACL360 + CLS360) (1–2 days)

- Modules: 0–1 + 6–9 + capstone

---

## Assessments & completion criteria

- **Knowledge checks**: after Modules 0, 4, 6, 8
- **Practical checks**: successful PIM360 load + LiveView report + validated ACL360 access + CLS360 class library update process documented
- **Sign-off**: administrator verifies roles/access and that class library governance is understood

---

## Open items to tailor this to your exact Datum install

If you want this to be even tighter, tell me which Datum360 products your environment actually uses (PIM360 only vs PIM360+LiveView vs ACL360/CLS360 enabled), and I’ll trim/expand modules accordingly.
