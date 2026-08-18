let
    Source = src_People_Data,
    RequiredColumns = {
        "Employee_ID", "First_Name", "Last_Name", "Country", "Department",
        "Email", "AD_Username", "BambooHR_ID", "Maconomy_ID", "Xytech_ID",
        "Duplicate_Flag", "Missing_Email", "Data_Quality_Status",
        "Source_System", "Source_of_Truth", "Validation_Status"
    },
    SelectedColumns = Table.SelectColumns(Source, RequiredColumns, MissingField.UseNull),
    CleanText = Table.TransformColumns(
        SelectedColumns,
        List.Transform(
            List.RemoveItems(Table.ColumnNames(SelectedColumns), {"Employee_ID"}),
            each {_, (value) =>
                if value = null then null
                else
                    let cleaned = Text.Trim(Text.Clean(Text.From(value)))
                    in if cleaned = "" then null else cleaned,
                type nullable text}
        )
    ),
    Typed = Table.TransformColumnTypes(
        CleanText,
        {
            {"Employee_ID", Int64.Type},
            {"First_Name", type text},
            {"Last_Name", type text},
            {"Country", type text},
            {"Department", type text},
            {"Email", type text},
            {"AD_Username", type text},
            {"BambooHR_ID", type text},
            {"Maconomy_ID", type text},
            {"Xytech_ID", type text},
            {"Duplicate_Flag", type text},
            {"Missing_Email", type text},
            {"Data_Quality_Status", type text},
            {"Source_System", type text},
            {"Source_of_Truth", type text},
            {"Validation_Status", type text}
        },
        "en-GB"
    ),
    NormalisedValues = Table.TransformColumns(
        Typed,
        {
            {"Duplicate_Flag", each if _ = null then null else Text.Proper(Text.Lower(_)), type nullable text},
            {"Missing_Email", each if _ = null then null else Text.Proper(Text.Lower(_)), type nullable text},
            {"Data_Quality_Status", each if _ = null then null else Text.Proper(Text.Lower(_)), type nullable text},
            {"Source_of_Truth", each if _ = null then null else Text.Proper(Text.Lower(_)), type nullable text},
            {"Validation_Status", each if _ = null then null else Text.Proper(Text.Lower(_)), type nullable text}
        }
    )
in
    NormalisedValues
