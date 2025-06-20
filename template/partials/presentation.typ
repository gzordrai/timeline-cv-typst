#import "../timeline-cv.typ": *

#let presentation_section(data, renderer) = {
  renderer(
    data.first_name,
    data.last_name,
    data.title,
    photo: image(data.photo, width: 75%),
    contact: data.contact.map(item => if "link" in item {
      (type: item.type, link: item.link, display: item.display)
    } else {
      (type: item.type, display: item.display)
    }),
    presentation: data.presentation,
  )
}
