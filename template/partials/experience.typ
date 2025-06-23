#import "../timeline-cv.typ": *

#let experience_section(data, renderer) = {
  section_timeline(icon: "suitcase", title: "Experience", content: data.map(item => if "details" in item.keys() {
    renderer(
      title: item.title,
      when: item.when,
      where: item.where,
      details: item.details,
    )[]
  } else {
    renderer(
      title: item.title,
      when: item.when,
      where: item.where,
    )[]
  }))
}
