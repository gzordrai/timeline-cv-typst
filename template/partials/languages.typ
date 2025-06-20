#import "../timeline-cv.typ": *

#let languages_section(data, renderer) = {
  section_items(
    title: "Languages",
    data.map(item => renderer(
      title: item.title,
      item.description,
    )),
  )
}
