#import "/strings/zh.typ" as lang
#text(
  size: 1.3em,
  lang.section-3,
)

#block(
  height: 100% - 3em,
  width: 100%,
  stroke: 0.5pt + black,
  inset: 0.5em,
)[
  #lang.spv-opinion

  #align(
    bottom,
    stack(
      dir: ltr,
      rect(width: 50%, stroke: none, lang.extra-page),
      rect(
        width: 50%,
        stroke: none,
        [
          #set align(center)
          #lang.spv-signature
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

    #lang.thesis-prop-records
    + #lang.prop-panel-opinion

    #align(bottom)[
      #set enum(start: 2)

      + #lang.voting-result:

        #lang.prop-panel-attendance

      + #lang.prop-panel-chair #signatures \
        #lang.prop-panel-members \

        #{
          (signatures * 3)
        } \
        #{
          (signatures * 3)
        }
      + #lang.thesis-prop-date

      #align(right)[YY MM DD]
    ]

  ],
)

#rect(
  stroke: 0.5pt + black,
  width: 100%,
  height: 100%,
  [
    #lang.school-opinion
    #set align(bottom + right)
    #block(
      inset: 2em,
      [
        #set align(center)
        #lang.person-in-charge
        #v(4em)
        YY MM DD
      ]
    )
  ],
)


