#import "/strings/en.typ" as lang

#let default-label = (
  title: lang.cover-title,
  student-number: lang.student-number,
  degree: lang.degree,
  school-name: lang.school-name,
)

#let info(key, value) = {
  let info-key(body) = rect(
    height: 1.8em,
    stroke: none,
    inset: (x: 0pt, bottom: 1pt),
    text(weight: "bold", bottom-edge: "descender", body),
  )

  let make-entry(body) = rect(
    height: 1.8em,
    width: 100%,
    stroke: (bottom: 0.8pt + black),
    text(bottom-edge: "descender", body),
  )

  let value-entries = if type(value) == array {
    value
  } else {
    (value,)
  }

  let entries = value-entries.map(make-entry)
  let last-entry = entries.pop()

  return (
    info-key(text(bottom-edge: "descender", key)),
    ..entries.map(b => (b, [])).flatten(),
    last-entry,
  )
}

#let make-cover(
  label: default-label,
  student-number: "2023XXXX01",
  date: "2024 - 09 - 03",
  info-entries: (:),
) = [
  #let label = default-label + label
  #let info-entries = lang.cover-entries + info-entries

  #block(width: 100%, height: 100%)[
    #set align(center)
    #set text(size: 14pt)

    #text(weight: "bold")[
      #label.student-number:
      #box(
        inset: (x: 10pt),
        outset: (bottom: 0.5mm),
        stroke: (bottom: 0.5pt),
        student-number,
      )
    ]

    #v(3em)

    #block(width: 65%, clip: true, inset: (bottom: -20pt))[
      #image("/assets/nuist-logo-text.png")
    ]

    #v(3em)

    #text(size: 18pt, weight: "bold", label.title)

    #v(2em)


    #box(
      width: 70%,
      grid(
        columns: (auto, 2fr),
        column-gutter: 1em,
        row-gutter: 0.2em,
        align: (right + horizon, center),
        ..info-entries.pairs().map(i => info(i.at(0), i.at(1))).flatten()
      ),
    )


    #align(
      bottom,
      [
        #label.degree \
        #v(2pt)
        #label.school-name \
        #v(2pt)
        #date
      ],
    )
  ]
]
