#import "../timeline-cv.typ": *

#let awards_section(data, renderer) = {
  section_items(
    title: "Awards",
    data.map(item => renderer(
      title: item.title,
      description: item.description
    )[])
  )
}
