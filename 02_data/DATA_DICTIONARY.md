# Data Dictionary

| Field | Purpose |
|---|---|
| Employee_ID | Employee business identifier |
| First_Name | Employee first name |
| Last_Name | Employee last name |
| Country | Country assignment |
| Department | Organisational department |
| Email | Employee email address |
| AD_Username | Active Directory identifier |
| BambooHR_ID | BambooHR identifier |
| Maconomy_ID | Maconomy identifier |
| Xytech_ID | Xytech identifier |
| Duplicate_Flag | Source duplicate indicator |
| Missing_Email | Missing-email indicator |
| Data_Quality_Status | Overall data-quality status |
| Source_System | Originating operational system |
| Source_of_Truth | Governance confirmation status |
| Validation_Status | Migration validation status |

## Grain

One row represents one employee migration candidate in the source simulation.

## Candidate identifiers used for reconciliation

- Employee_ID
- Email
- AD_Username
- BambooHR_ID
- Maconomy_ID
- Xytech_ID
