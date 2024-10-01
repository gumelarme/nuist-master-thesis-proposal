#import "/strings/zh.typ" as lang
// TODO: Make (1) and (2) a function, and fillable
// TODO: Make (1) and (2) automatically resize
#text(size: 1.5em, lang.section-2)

#lang.section-2-1
#rect(
  width: 100%,
  height: 40%,
  stroke: 0.5pt + black,
)[

]

#lang.section-2-2
#table(
  rows: 3em,
  columns: (auto, 1fr, 8em),
  align: center + horizon,
  stroke: 0.5pt + black,
  lang.th-start-end-dates, lang.th-work-content, lang.th-notes,
  ..([], [], []) * 9
)
