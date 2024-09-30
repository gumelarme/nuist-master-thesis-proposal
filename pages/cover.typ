#import "/strings/en.typ": *
#block(width: 100%, height: 100%)[
  #set align(center)
  #set text(size: 14pt)


  *Student Number: #box(
    inset:  (x: 10pt),
    outset: (bottom: 0.5mm),
    stroke: (bottom: 0.5pt),
  )[202352620025]*

  #v(3em)

  #block(width: 65%, clip: true, inset: (bottom: -20pt))[
    #image("/assets/nuist-logo-text.png")
  ]

  #v(3em)

  #text(size: 18pt, weight: "bold", se-cover-title)

  #v(2em)

  #let fill-in(body) = box(
    inset:  (x: 10pt),
    outset: (bottom: 0.5mm),
    stroke: (bottom: 0.5pt),
    body,
  )


  #let info(key, value) = {
    let info-key(body) = rect(
      height: 1.8em, 
      stroke: none,
      inset: (x: 0pt, bottom: 1pt),
      text(weight: "bold", bottom-edge: "descender", body)
    )

    let make-entry(body) = rect(
          height: 1.8em, 
          width: 100%,
          stroke: (bottom: 0.8pt + black),
          // stroke: 1pt + black,
          // inset: (x: 0pt, bottom: -0.5pt),
          text(bottom-edge: "descender", body)
    )

    let value-entries = if type(value) == array { value } else { (value, ) }
    let entries = value-entries.map(make-entry)
    let last-entry = entries.pop()

    return (
        info-key(text(bottom-edge: "descender", key)),
        ..entries.map((b) => (b, [])).flatten(),
        last-entry,
    )
  }


  #box(width: 70%, grid(
    columns: (auto, 2fr), 
    column-gutter: 1em,
    row-gutter: 0.2em,
    align: (right + horizon, center),
    ..info("School Affiliated", (lorem(1), lorem(3))),
    ..info("Major", "人工智能"),
    ..info("Degree Type", ""),
    ..info("Suprevisor Name", ""),
    ..info("Proposal Date", ""),
    ..info("Student Name", ""),
    ..info("Enrollment Date", ""),
  ))


  #align(bottom, [
    Graduate School \
    #v(2pt)
    Nanjing University of Information Science & Technology \
    #v(2pt)
    2024 - 09 - 21
  ])
]
