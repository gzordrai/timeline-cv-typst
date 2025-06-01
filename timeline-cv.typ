#let print_name(
  metadata,
) = {
  set text(font: metadata.layout.font.title)
  set align(eval(metadata.layout.name.align))
  text(size: eval(metadata.layout.name.first_name_size), weight: "extrabold")[
    #metadata.info.first_name
  ]
  linebreak()
  text(eval(metadata.layout.name.last_name_size), weight: "extrabold")[
    #metadata.info.last_name
  ]
  v(1.5em, weak: true)
  text(size: 1.1em, weight: "bold", fill: rgb(metadata.layout.colour.side))[
    #smallcaps(metadata.info.job_title)
  ]
}

#let cv(metadata: (), side: [], main: [], doc) = {
  set page(
    paper: "a4",
    margin: (x: eval(metadata.layout.margin.x), y: eval(metadata.layout.margin.y)),
  )
  set text(
    font: metadata.layout.font.main,
    size: eval(metadata.layout.font.size),
  )
  set par(
    justify: true,
    leading: 0.52em,
  )
  grid(
    columns: (3fr, 8fr),
    gutter: eval(metadata.layout.margin.column_separator),
    [
      #print_name(metadata)\
      #side
    ],
    main,
  )
  doc
}
