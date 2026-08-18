let
    Source = Excel.Workbook(File.Contents(pFilePath), null, true),
    PeopleDataSheet = Source{[Item="People_Data", Kind="Sheet"]}[Data],
    PromotedHeaders = Table.PromoteHeaders(PeopleDataSheet, [PromoteAllScalars=true])
in
    PromotedHeaders
