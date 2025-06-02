#let print_name(
  data,
) = {
  set text(font: data.layout.font.title)
  set align(eval(data.layout.name.align))
  text(size: eval(data.layout.name.first_name_size), weight: "extrabold")[
    #data.info.first_name
  ]
  linebreak()
  text(eval(data.layout.name.last_name_size), weight: "extrabold")[
    #data.info.last_name
  ]
  v(1.5em, weak: true)
  text(size: 1.1em, weight: "bold", fill: rgb(data.layout.colour.side))[
    #smallcaps(data.info.job_title)
  ]
}

#let timeline_section(
  title: "Section Name",
  content: (),
) = {
  place()[
    #circle(radius: .9em, stroke: .15em)
  ]
  box(inset: (left: 1.8em + 1.25em, top: .35em))[
    #heading(numbering: none, depth: 1, title)
  ]
  box(
    stroke: (left: .15em, rest: 0em),
    inset: (left: .9em + 1.25em, top: 1em, bottom: .75em),
    outset: (left: -.9em, top: .05em, right: 1.4em, rest: 0em),
  )[
    #list(
      marker: [
        #place(dx: -.35em - 1.25em)[
          #circle(radius: .35em, fill: white, stroke: .15em)
        ]
      ],
      body-indent: 0pt,
      spacing: 1.5em,
      ..content,
    )
  ]
}

#let tag(data: (), content) = [
  #box(inset: (left: .48em, bottom: -.18em))[
    #box(
      fill: rgb(data.layout.colour.tag),
      inset: (x: .48em, y: .24em),
      clip: true,
      radius: .5em,
      text(font: data.layout.font.tag, size: .8em, fill: black, weight: "regular")[#content],
    )
  ]
]

#let separator = [
  #h(.2em)·#h(.2em)
]

#let main_entry(data: (), when: "", where: "", title: "", description: "") = [
  #if (when != "") [
    _ #when _
    #separator
  ]
  #text(weight: "semibold", where)
  #if (when != "" and where != "") [
    #linebreak()
  ]
  #text(
    font: data.layout.font.title,
    size: 1.1em,
    fill: rgb(data.layout.colour.main),
    weight: "semibold",
    smallcaps(title),
  )\
  #description
]

#let cv(data: (), side: [], main: [], doc) = {
  set page(
    paper: "a4",
    margin: (x: eval(data.layout.margin.x), y: eval(data.layout.margin.y)),
  )
  set text(
    font: data.layout.font.main,
    size: eval(data.layout.font.size),
  )
  set par(
    justify: true,
    leading: 0.52em,
  )
  show heading: it => block(
    width: 100%,
    text(
      font: data.layout.font.title,
      smallcaps(it.body),
    ),
  )

  grid(
    columns: (3fr, 8fr),
    gutter: eval(data.layout.margin.column_separator),
    [
      #print_name(data)\
      #set text(size: eval(data.layout.font.size) * 0.9)
      #side
    ],
    [
      #main
    ],
  )
  doc
}
