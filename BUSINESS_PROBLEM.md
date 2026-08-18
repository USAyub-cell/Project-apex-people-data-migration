# 30-Day Pilot Delivery Plan

| Days | Workstream | Activities | Primary Tools | Output |
|---|---|---|---|---|
| 1-3 | Discovery | Define problem, scope, stakeholders, objectives and success measures | Excel / Markdown | Charter and business problem |
| 4-6 | Data understanding | Profile 200 records, systems, countries, departments and mandatory fields | Excel / Power Query | Data profile |
| 7-9 | Data quality | Define completeness, uniqueness, validity and governance rules | Excel / SQL | DQ rule catalogue |
| 10-12 | SQL staging | Define raw, staging, DQ and curated structures | PostgreSQL | SQL architecture |
| 13-15 | SQL validation | Build duplicate, missing-email, source-of-truth and readiness queries | PostgreSQL | SQL validation pack |
| 16-17 | Remediation | Build exception workflow and remediation controls | Excel | Remediation register |
| 18-20 | Modelling | Build fact/dimension semantic model | Power BI | Data model |
| 21-23 | KPI layer | Build DAX measures and reconciliation controls | Power BI / SQL | KPI catalogue |
| 24-26 | Dashboard | Build executive, DQ and remediation pages | Power BI | Dashboard |
| 27 | QA | Reconcile source, Excel, SQL and Power BI | All | QA evidence |
| 28 | UAT simulation | Test executive and analyst use cases | Power BI / Excel | UAT log |
| 29 | Executive reporting | Summarise findings, risk and recommendation | Power BI / Markdown | Executive case study |
| 30 | Handover | Package code, workbook, documentation and interview evidence | All | Portfolio release |

## Pilot success criteria

- 100% source-row reconciliation
- 100% SQL-to-Power-BI KPI reconciliation
- Zero unresolved critical duplicate issues before sign-off
- Zero missing mandatory email values before sign-off
- 100% source-of-truth confirmation before sign-off
- 100% validation completion before sign-off
- Complete audit trail for remediation decisions
- Executive dashboard metrics reconcile to governed source data

The current baseline is 94.5% migration readiness. The 100% target is a pilot control objective and must not be described as achieved unless the underlying synthetic data is actually remediated and revalidated.
