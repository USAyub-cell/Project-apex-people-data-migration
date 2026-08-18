# Report Page Structure

## Page 1 — Executive Migration Readiness

KPI cards:
- Total Employees
- Migration Ready Records
- Migration Readiness %
- Remediation Required Records
- Duplicate Records
- Missing Email Records

Visuals:
- Stacked bar: Readiness Status by record count
- Clustered bar: Ready and not ready by Source_System
- Bar chart: affected employees by IssueType
- Matrix: Department, total, ready, remediation, readiness %
- Slicers: Country, Department, Source_System, ReadinessStatus

## Page 2 — Data-Quality Assessment

Visuals:
- Bar chart: Employees With Issues by IssueType
- Matrix: Department by IssueType
- Matrix: Source_System by IssueType
- Table: Employee_ID, Department, Country, Source_System, IssueType,
  IssueSeverity, IssueDescription

Slicers:
- IssueType
- IssueSeverity
- Source_System
- Department
- Country

## Page 3 — Source of Truth and Validation

KPI cards:
- Confirmed Source of Truth Records
- Source of Truth Confirmation %
- Validated Records
- Validation Completion %
- Pending Validation Records

Visuals:
- Clustered columns: source-of-truth status by Source_System
- Bar chart: validation completion by Department
- Matrix: Source_System with readiness and governance measures

## Page 4 — Remediation Action Register

Table:
- Employee_ID
- EmployeeName
- Country
- Department
- Source_System
- Duplicate_Flag
- Missing_Email
- Source_of_Truth
- Validation_Status
- Data_Quality_Status
- PrimaryIssue
- IssueCount
- ReadinessStatus

Enable drillthrough from the summary pages.

## Page 5 — Definitions and Controls

Display:
- Dataset name
- Model version
- Refresh timestamp
- Migration-ready rule
- KPI definitions
- DQ rule catalogue
- Assumptions and limitations
- Report owner
- QA status
