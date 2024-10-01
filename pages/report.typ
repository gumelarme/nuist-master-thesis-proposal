#text(size: 1.5em, "1. Thesis Proposal report")

#let title-sources = list(marker: $ballot$, 
        [04 National Social Science Planning/Fund Program],
        [05 Humanities/Social Science Research Program of Ministry of Education],
        [06 National Natural Science Foundation of China (NSFC)],
        [09 Program Funded by the Provincial Government (Autonomous Region/Municipality directly under the Central Government)],
        [15 Program Entrusted by Enterprises and Institiutions],
        [16 Self-selected Program of School],
        [99 Others],
)

#show table.cell: it => {
  if it.x > 0 {
    return text(size: 0.9em, it)
  }

  return it
}

#let table-len = 7
#let table-rows = 4

#block(width: 100%, height: 100%, 
  table(
    align: horizon + center,
    //     tt   rd   ts    note  tt    opt  pc
    rows: (5em, 5em, auto, auto, auto, 2em, 1fr),
    //       header    title type options          notes
    columns: (auto,) + (table-len - 2) * (2fr, ) + (1fr, ),
    stroke: 0.5pt + black,

    [Thesis Title], table.cell(colspan: table-len - 1, []),
    [Research \ Direction], table.cell(colspan: table-len - 1, []),

    table.cell(rowspan: 2, [Title Source]),
    table.cell(rowspan: 2, align: horizon + left, colspan: table-len - 2, title-sources),
    [Notes],
    [],

    table.cell(rowspan: 2, [Title Type]),
    [Engineering Technology],
    [Applied Research],
    [Theoritical Research],
    [Insterdisciplinary Research],

    table.cell(rowspan: 2, [Others]),
    table.cell(rowspan: 2, []),
    // Empty column below the title types
    [ ],
    [ ],
    [ ],
    [ ],

    table.cell(colspan: table-len , align: top + left, [Proposal Contents])
  )
)

