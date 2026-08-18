let
    Source = stg_People_Data,
    AddEmployeeName = Table.AddColumn(
        Source,
        "EmployeeName",
        each Text.Combine(List.RemoveNulls({[First_Name], [Last_Name]}), " "),
        type text
    ),
    AddIsDuplicate = Table.AddColumn(
        AddEmployeeName,
        "IsDuplicate",
        each [Duplicate_Flag] = "Yes",
        type logical
    ),
    AddIsMissingEmail = Table.AddColumn(
        AddIsDuplicate,
        "IsMissingEmail",
        each [Email] = null or [Missing_Email] = "Yes",
        type logical
    ),
    AddIsSourceOfTruthInvalid = Table.AddColumn(
        AddIsMissingEmail,
        "IsSourceOfTruthInvalid",
        each [Source_of_Truth] <> "Confirmed",
        type logical
    ),
    AddIsValidationPending = Table.AddColumn(
        AddIsSourceOfTruthInvalid,
        "IsValidationPending",
        each [Validation_Status] <> "Validated",
        type logical
    ),
    AddIsDataQualityUnclean = Table.AddColumn(
        AddIsValidationPending,
        "IsDataQualityUnclean",
        each [Data_Quality_Status] <> "Clean",
        type logical
    ),
    AddIssueCount = Table.AddColumn(
        AddIsDataQualityUnclean,
        "IssueCount",
        each
            Number.From([IsDuplicate]) +
            Number.From([IsMissingEmail]) +
            Number.From([IsSourceOfTruthInvalid]) +
            Number.From([IsValidationPending]) +
            Number.From([IsDataQualityUnclean]),
        Int64.Type
    ),
    AddIsMigrationReady = Table.AddColumn(
        AddIssueCount,
        "IsMigrationReady",
        each
            [Duplicate_Flag] = "No" and
            [Email] <> null and
            [Missing_Email] = "No" and
            [Source_of_Truth] = "Confirmed" and
            [Validation_Status] = "Validated" and
            [Data_Quality_Status] = "Clean",
        type logical
    ),
    AddReadinessStatus = Table.AddColumn(
        AddIsMigrationReady,
        "ReadinessStatus",
        each if [IsMigrationReady] then "Migration Ready" else "Remediation Required",
        type text
    ),
    AddPrimaryIssue = Table.AddColumn(
        AddReadinessStatus,
        "PrimaryIssue",
        each
            if [IsDuplicate] then "Duplicate Record"
            else if [IsMissingEmail] then "Missing Email"
            else if [IsSourceOfTruthInvalid] then "Source of Truth"
            else if [IsValidationPending] then "Validation"
            else if [IsDataQualityUnclean] then "Data Quality"
            else "None",
        type text
    )
in
    AddPrimaryIssue
