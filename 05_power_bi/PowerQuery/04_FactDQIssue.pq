let
    Source = FactPeopleMigration,
    AddIssueRecords = Table.AddColumn(
        Source,
        "IssueRecords",
        each List.RemoveNulls({
            if [IsDuplicate] then
                [DQRuleKey="DQ-001", IssueType="Duplicate Record", IssueSeverity="High",
                 IssueStatus="Open", IssueDescription="Record is explicitly flagged as a duplicate."]
            else null,
            if [IsMissingEmail] then
                [DQRuleKey="DQ-002", IssueType="Missing Email", IssueSeverity="High",
                 IssueStatus="Open", IssueDescription="Email is missing or the missing-email flag is Yes."]
            else null,
            if [IsSourceOfTruthInvalid] then
                [DQRuleKey="DQ-003", IssueType="Source of Truth", IssueSeverity="High",
                 IssueStatus="Open", IssueDescription="Source of truth is not Confirmed."]
            else null,
            if [IsValidationPending] then
                [DQRuleKey="DQ-004", IssueType="Validation", IssueSeverity="High",
                 IssueStatus="Open", IssueDescription="Validation status is not Validated."]
            else null,
            if [IsDataQualityUnclean] then
                [DQRuleKey="DQ-005", IssueType="Data Quality", IssueSeverity="High",
                 IssueStatus="Open", IssueDescription="Data-quality status is not Clean."]
            else null
        }),
        type list
    ),
    KeepRequired = Table.SelectColumns(
        AddIssueRecords,
        {"Employee_ID", "Country", "Department", "Source_System", "IssueRecords"}
    ),
    ExpandIssueList = Table.ExpandListColumn(KeepRequired, "IssueRecords"),
    ExpandIssueRecord = Table.ExpandRecordColumn(
        ExpandIssueList,
        "IssueRecords",
        {"DQRuleKey", "IssueType", "IssueSeverity", "IssueStatus", "IssueDescription"},
        {"DQRuleKey", "IssueType", "IssueSeverity", "IssueStatus", "IssueDescription"}
    )
in
    ExpandIssueRecord
