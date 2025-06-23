#import "../timeline-cv.typ": *

#let associations_section(data, renderer) = {
  section_items(title: "Associative Experience", data.map(item => renderer(
    title: item.title,
    preposition: item.preposition,
    where: item.where,
    when: item.when,
  )[]))
}
