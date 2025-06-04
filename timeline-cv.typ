#import "@preview/fontawesome:0.5.0": *

#let section_timeline(
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
      fill: rgb(data.colour.tag),
      inset: (x: .48em, y: .24em),
      clip: true,
      radius: .5em,
      text(font: data.font.tag, size: .8em, fill: black, weight: "regular")[#content],
    )
  ]
]

#let separator = [
  #h(.2em)·#h(.2em)
]

#let main_entry(data: (), when: "", where: "", details: "", title: "", description) = [
  #if (when != "") [
    _ #when _
    #if (where != "" or details != "" or title != "") [
      #separator
    ]
  ]
  #text(weight: "semibold", where)
  #if (details != "") [
    #text(size: 0.9em)[
      #h(.2em) (#details)
    ]
  ]
  #if (when != "" and (where != "" or details != "")) [
    #linebreak()
  ]
  #text(
    font: data.font.title,
    size: 1.1em,
    fill: rgb(data.colour.main),
    weight: "semibold",
    smallcaps(title),
  )\
  #description
]

#let section_presentation(data: (), first_name, last_name, job_title, side: true, content) = {
  // Name
  {
    set text(font: data.font.title)
    set align(eval(data.name.align))
    text(size: eval(data.name.first_name_size), weight: "extrabold")[
      #first_name
    ]
    linebreak()
    text(eval(data.name.last_name_size), weight: "extrabold")[
      #last_name
    ]
    v(1.5em, weak: true)
    if job_title != "" {
      text(size: 1.1em, weight: "bold", fill: rgb(data.colour.side))[
        #smallcaps(job_title)
      ]
    }
    v(1em)
  }
  // Contact
  let contact_separator = if side { v(-.1em) } else { separator }
  for i in range(content.len()) [
    #if (i > 0) {
      contact_separator
    }
    #let item = content.at(i)
    #if ("type" in item) [
      #text(size: 1.2em, fa-icon(item.type, solid: true))
      #h(.5em)
    ]
    #text(font: data.font.tag)[
      #if ("link" in item) [
        #link(item.link)[#item.display]
      ] else [
        #item.display
      ]
    ]
  ]
}

#let cv(data: (), side: [], main: [], doc) = {
  set page(
    paper: "a4",
    margin: (x: eval(data.margin.x), y: eval(data.margin.y)),
  )
  set text(
    font: data.font.main,
    size: eval(data.font.size),
  )
  set par(
    justify: true,
    leading: 0.52em,
  )
  show heading: it => block(
    width: 100%,
    text(
      font: data.font.title,
      smallcaps(it.body),
    ),
  )

  grid(
    columns: (3fr, 8fr),
    gutter: eval(data.margin.column_separator),
    [
      #set text(size: eval(data.font.size) * 0.9)
      #v(1em)
      #side
    ],
    [
      #main
    ],
  )
  doc
}
