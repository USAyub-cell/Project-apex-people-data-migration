let
    Source = FactPeopleMigration,
    Selected = Table.SelectColumns(Source, {"Country"}),
    RemovedBlank = Table.SelectRows(Selected, each [Country] <> null),
    DistinctRows = Table.Distinct(RemovedBlank),
    Sorted = Table.Sort(DistinctRows, {{"Country", Order.Ascending}})
in
    Sorted
