#import "../timeline-cv.typ": *

#let education_section(data, renderer) = {
  section_timeline(
    icon: "user-graduate",
    title: "Education",
    content: data.map(item => renderer(
      title: item.title,
      when: item.when,
      where: item.where,
    )[]),
  )
}
