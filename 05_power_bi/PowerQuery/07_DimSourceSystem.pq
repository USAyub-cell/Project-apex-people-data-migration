let
    Source = FactPeopleMigration,
    Selected = Table.SelectColumns(Source, {"Source_System"}),
    RemovedBlank = Table.SelectRows(Selected, each [Source_System] <> null),
    DistinctRows = Table.Distinct(RemovedBlank),
    Sorted = Table.Sort(DistinctRows, {{"Source_System", Order.Ascending}})
in
    Sorted
