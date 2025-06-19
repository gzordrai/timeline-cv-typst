#import "timeline-cv.typ": *
#import "partials/associations.typ": *
#import "partials/awards.typ": *
#import "partials/education.typ": *
#import "partials/experience.typ": *
#import "partials/languages.typ": *
#import "partials/presentation.typ": *
#import "partials/skills.typ": *
#import "partials/softwares.typ": *

#let metadata = toml("./metadata.toml")
#let lang = sys.inputs.at("lang", default: "en")
#let data = json("../lang/" + lang + ".json")

// Renderer
#let entry_side = entry_side.with(data: metadata)
#let entry_simple = entry_simple.with(data: metadata)
#let entry_main = entry_main.with(data: metadata)
#let tag = tag.with(data: metadata)
#let entry_skill = entry_skill.with(data: metadata)
#let section_presentation = section_presentation.with(data: metadata)

#if lang != none {
  metadata.language = lang
}

#let side = [
  #presentation_section(data.presentation, section_presentation)
  #awards_section(data.awards, entry_simple)
  #skills_section(data.skills, entry_skill)
  #languages_section(data.languages, entry_simple)
  #associations_section(data.associations, entry_side)
]
#let main = [
  #experience_section(data.experience, entry_main)
  #education_section(data.education, entry_main)
  #softwares_section(data.softwares, entry_main)
]
#show: cv.with(
  data: metadata,
  side: side,
  main: main,
)
