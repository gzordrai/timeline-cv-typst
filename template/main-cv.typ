#import "../timeline-cv.typ": *
#let metadata = toml("./metadata.toml")

#let import_sections(lang, sections) = {
  for section in sections {
    include {
      "./" + lang + "/" + section + ".typ"
    }
  }
}

#let side = [
  #lorem(100)
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
