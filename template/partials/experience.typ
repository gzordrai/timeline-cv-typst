#import "../timeline-cv.typ": *

#let experience_section(data, renderer) = {
  section_timeline(
    icon: "suitcase",
    title: "Experience",
    content: data.map(item => renderer(
      title: item.title,
      when: item.when,
      where: item.where
    )[])
  )
}