#text(
  size: 1.3em,
  "3. Comments of Supervisor, Thesis Proposal Panel, School Affiliated",
)

#block(
  height: 100% - 2.5em,
  width: 100%,
  stroke: 0.5pt + black,
  inset: 0.5em,
)[
  Supervisor's comprehensive opinion on the thesis proposal:

  #align(
    bottom,
    stack(
      dir: ltr,
      rect(width: 50%, stroke: none, [Note: Extra pages may be added]),
      rect(
        width: 50%,
        stroke: none,
        [
          #set align(center)
          Supervisor (Signature)
          #v(6em)
          YY MM DD
        ],
      ),
    ),
  )
]

#let signatures = [
  #box(width: 6.5em, stroke: (bottom: 0.5pt + black))
  #h(1em)
]

#rect(
  stroke: 0.5pt + black,
  width: 100%,
  height: 100%,
  [
    *Thesis Proposal Records* (Ph.D proposal panel should consist of 5-7 people, Masters proposoal should consist of 3-5 people.)
    + Proposal Panel Opinion:

    #align(bottom)[
      #set enum(start: 2)

      + Voting Results:

        Proposal Panel in Attendance

      + Proposal Panel Chair (Signature) #signatures \
        Proposal Panel Members (Signatures) \
        #{
          (signatures * 3)
        } \
        #{
          (signatures * 3)
        }
      + Thesis Proposal Date
      #align(right)[YY MM DD]
    ]

  ],
)

#rect(
  stroke: 0.5pt + black,
  width: 100%,
  height: 100%,
  [
    Opinion of the School Affiliated:
    #align(
      bottom + right,
      [
        #block(
          inset: 2em,
          align(
            center,
            [
              Person in Charge of the School (Seal)
              #v(4em)
              YY MM DD
            ],
          ),
        )
      ],
    )

  ],
)


