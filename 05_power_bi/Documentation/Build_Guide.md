# Power BI Desktop Build Guide

## 1. Create the file-path parameter

Home > Transform data > Manage parameters > New parameter:

- Name: `pFilePath`
- Type: Text
- Current value: full path to the supplied Excel workbook

Create a blank query called `pFilePath` and paste the code in
`PowerQuery/00_pFilePath.pq`, replacing the example path.

## 2. Add Power Query queries

Create blank queries and paste the supplied M code in filename order.

Load settings:

| Query | Load |
|---|---|
| pFilePath | No |
| src_People_Data | No |
| stg_People_Data | No |
| FactPeopleMigration | Yes |
| FactDQIssue | Yes |
| DimCountry | Yes |
| DimDepartment | Yes |
| DimSourceSystem | Yes |
| DimDQRule | Yes |

## 3. Model relationships

Create the active, single-direction relationships listed in
`Model/Relationships.csv`.

## 4. Measures table

Create a new calculated table using the first statement in
`DAX/APEX_Migration_Readiness_Measures.dax`. Hide its placeholder column.
Create the measures under the Measures table.

## 5. Report theme

View > Themes > Browse for themes and select:

`Theme/APEX_Migration_Readiness_Theme.json`

## 6. Report pages

Build the five pages in `Documentation/Page_Structure.md`.

## 7. Validation

Run the acceptance tests and document:

- Desktop edition and full version number.
- Data source path or connection.
- Refresh date and result.
- Baseline reconciliation.
- Security test result.
- Publishing destination and test result.
