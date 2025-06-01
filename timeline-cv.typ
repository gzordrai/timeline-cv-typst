#let print_name(
  first_name,
  last_name,
) = {
  text(size: 14pt)[
    _#first_name _
  ]
  text(size: 18pt)[
    *#last_name*
  ]
}

#let cv(metadata: (), doc) = {
  set page(
    paper: "a4",
    margin: (x: 1cm, y: 1cm),
  )
  set text(
    font: "Bitter",
    size: 10pt,
  )
  set par(
    justify: true,
    leading: 0.52em,
  )
  print_name(metadata.info.first_name, metadata.info.last_name)
  doc
}
