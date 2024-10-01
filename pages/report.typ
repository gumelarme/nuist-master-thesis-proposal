#import "/strings/zh.typ" as lang

#text(size: 1.5em, lang.section-1)

#let title-sources = list(
  marker: $ballot$,
  ..lang.title-sources,
)

#show table.cell: it => {
  if it.x > 0 {
    return text(size: 0.9em, it)
  }

  return it
}

#let table-len = 7
#let table-rows = 4

#block(
  width: 100%,
  height: 100%,
  table(
    align: horizon + center,
    //     tt   rd   ts    note  tt    opt  pc
    rows: (5em, 5em, auto, auto, auto, 2em, 1fr),
    //       header    title type options          notes
    columns: (auto,) + (table-len - 2) * (2fr, ) + (1fr, ),
    stroke: 0.5pt + black,

    lang.th-thesis-title, table.cell(colspan: table-len - 1, []),
    lang.th-research-dir, table.cell(colspan: table-len - 1, []),

    table.cell(rowspan: 2, lang.th-title-source),
    table.cell(rowspan: 2, align: horizon + left, colspan: table-len - 2, title-sources),
    lang.th-notes,
    [],

    table.cell(rowspan: 2, lang.th-title-type),
    lang.tt-engineering,
    lang.tt-applied,
    lang.tt-theoritical,
    lang.tt-interdis,

    table.cell(rowspan: 2, lang.tt-other),
    table.cell(rowspan: 2, []),
    // Empty column below the title types
    [ ],
    [ ],
    [ ],
    [ ],

    table.cell(colspan: table-len , align: top + left, lang.th-proposal-content)
  ),
)

