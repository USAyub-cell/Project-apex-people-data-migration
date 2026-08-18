# Business Problem Scenario

## Scenario

A multinational organisation is preparing to consolidate employee master data into a future enterprise people platform.

Employee records currently exist across BambooHR, Active Directory, Maconomy and Xytech. Management does not have a single governed assessment showing whether records are complete, valid, non-duplicated, source-of-truth confirmed and ready to migrate.

## Executive question

**Can the organisation safely proceed with employee-data migration, and what must be remediated before cutover?**

## Risks

- Duplicate employee creation in the target platform
- Incomplete employee identity/contact records
- Conflicting authoritative systems
- Unvalidated records entering the target platform
- Poor auditability of migration decisions
- Operational rework after cutover
- Reduced executive confidence in migration reporting

## Pilot objective

Design a controlled analytics solution that:

1. profiles the employee dataset;
2. identifies migration-blocking quality issues;
3. creates repeatable SQL validation logic;
4. establishes a remediation workflow;
5. produces a governed migration-ready dataset;
6. provides executive Power BI reporting;
7. reconciles results across Excel, SQL and Power BI;
8. produces evidence suitable for QA and migration sign-off.

## Decision rule

Final migration should not be authorised while critical migration-blocking data-quality exceptions remain unresolved.
