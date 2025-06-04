#import "../../timeline-cv.typ": *
#let metadata = toml("../metadata.toml")
#let main_entry = main_entry.with(data: metadata)
#let tag = tag.with(data: metadata)

#section_timeline(
  title: "Software Projects",
  content: (
    main_entry(
      when: [2021 – 2023],
      title: [Clippy 2.0 #tag("python") #tag("nlp")],
    )[#lorem(19)],
    main_entry(
      when: [since 2020],
      title: [EduROMBitcoinFarm],
    )[#lorem(8)],
    main_entry(
      when: [2021],
      title: [Stremiaux],
    )[#lorem(12)],
    main_entry(title: [MPoxTracker])[#lorem(14)],
  ),
)
