# Compatibility and Release Limitations

## What is guaranteed

The package has internally consistent table names, field names, rule logic, DAX,
relationship definitions, source data and reconciliation targets.

## What is not guaranteed

No supplier, consultant or file generator can guarantee one PBIX will work in every
past, current and future Power BI version. Compatibility depends on:

- Power BI Desktop build and edition.
- Power BI Desktop versus Power BI Desktop optimized for Report Server.
- Semantic model metadata version.
- Connector and gateway versions.
- Preview features and custom visuals.
- Information-protection and encryption support.
- Tenant policies and Power BI Service capacity features.

## Controlled release method

1. Select the target Power BI environment.
2. Record the exact Desktop version and edition.
3. Build and test the report in that version.
4. Publish to a test workspace or test Report Server folder.
5. Reconcile the eight baseline metrics.
6. Run security, refresh and export tests.
7. Obtain QA and Product Owner approval.
8. Retain the installer or managed deployment package for the approved build.

## Compatibility-first design decisions in this package

- Import mode.
- Excel.Workbook connector.
- Single-direction one-to-many relationships.
- No calculation groups.
- No field parameters.
- No composite models.
- No custom visuals.
- No preview-only visual features.
- No Direct Lake or Fabric-only dependency.
- No Python or R visuals.
- No bidirectional relationships.
