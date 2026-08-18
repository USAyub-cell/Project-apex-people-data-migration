let
    Source = FactPeopleMigration,
    Selected = Table.SelectColumns(Source, {"Department"}),
    RemovedBlank = Table.SelectRows(Selected, each [Department] <> null),
    DistinctRows = Table.Distinct(RemovedBlank),
    Sorted = Table.Sort(DistinctRows, {{"Department", Order.Ascending}})
in
    Sorted
