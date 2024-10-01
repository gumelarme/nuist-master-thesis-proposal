#text(size: 1.3em, "3. Comments of Supervisor, Thesis Proposal Panel, School Affiliated")

#block(
  height: 100% - 2.5em,
  width: 100%,
  stroke: 0.5pt + black,
  inset: 0.5em,
)[
  Supervisor's comprehensive opinion on the thesis proposal:

  #align(bottom, stack(
    dir: ltr,
    rect(width: 50%, stroke: none, [Note: Extra pages may be added]),
    rect(width: 50%, stroke: none, [
      #set align(center)
      Supervisor (Signature)
      #v(6em)
      YY  MM  DD
    ]),
  ))
]

