#import "../timeline-cv.typ": *

#let skills_section(data, renderer) = {
  section_items(
    title: "Skills",
    data.map(item => renderer(
      title: item.title,
      level: item.level,
    )),
  )
}
