# KPI Catalogue

| KPI | Definition | Baseline |
|---|---|---:|
| Total Employees | Distinct Employee_ID count | 200 |
| Migration Ready Records | Employees passing all readiness rules | 189 |
| Remediation Required | Total minus migration ready | 11 |
| Migration Readiness % | Ready / Total | 94.5% |
| Duplicate Records | Employees with duplicate flag = Yes | 5 |
| Missing Email Records | Employees with blank email or Missing_Email = Yes | 6 |
| Invalid Source of Truth | Source_of_Truth not Confirmed | 11 |
| Pending Validation | Validation_Status not Validated | 11 |

## Interpretation rule

Issue counts may overlap. Do not add issue categories together and interpret the result as unique affected employees unless using a distinct Employee_ID measure.
