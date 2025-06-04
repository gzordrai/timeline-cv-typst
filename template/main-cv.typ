#import "../timeline-cv.typ": *
#let metadata = toml("./metadata.toml")

#let import_sections(lang, sections) = {
  for id in range(sections.len()) {
    if (id > 0) {
      v(1fr)
    }
    include {
      "./" + lang + "/" + sections.at(id) + ".typ"
    }
  }
}

#let side = [
  #import_sections(
    metadata.language,
    ("presentation",),
  )
]
#let main = [
  #import_sections(
    metadata.language,
    ("experience", "education", "software"),
  )
]
#show: cv.with(
  data: metadata,
  side: side,
  main: main,
)
