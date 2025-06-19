#import "../timeline-cv.typ": *

#let softwares_section(data, renderer) = {
  section_timeline(
    icon: "computer",
    title: "Software Projects",
    content: data.map(item => renderer(
      title: item.title,
    )[])
  )
}
