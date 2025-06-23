#import "../timeline-cv.typ": *

#let fold_tag(acc, tag) = {
  acc += tag
}

#let softwares_section(data, renderer, tag) = {
  section_timeline(icon: "computer", title: "Software Projects", content: data.map(item => if "tags" in item.keys() {
    renderer(
      title: [#item.title #item.tags.map(t => tag(t)).join()],
      item.description,
    )
  } else {
    renderer(
      title: item.title,
      item.description,
    )
  }))
}
