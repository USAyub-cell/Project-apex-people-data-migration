let
    Source = #table(
        type table [
            DQRuleKey = text,
            RuleName = text,
            QualityDimension = text,
            Severity = text,
            RuleDescription = text
        ],
        {
            {"DQ-001", "Duplicate record", "Uniqueness", "High", "Duplicate_Flag must equal No."},
            {"DQ-002", "Missing email", "Completeness", "High", "Email must be populated and Missing_Email must equal No."},
            {"DQ-003", "Source of truth not confirmed", "Governance", "High", "Source_of_Truth must equal Confirmed."},
            {"DQ-004", "Validation incomplete", "Validity", "High", "Validation_Status must equal Validated."},
            {"DQ-005", "Data-quality status not clean", "Overall Quality", "High", "Data_Quality_Status must equal Clean."}
        }
    )
in
    Source
