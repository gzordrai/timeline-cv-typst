#import "../../timeline-cv.typ": *
#let metadata = toml("../metadata.toml")
#let main_entry = main_entry.with(data: metadata)
#let tag = tag.with(data: metadata)

#timeline_section(
  title: "Software Projects",
  content: (
    main_entry(
      when: [2021 – 2023],
      title: [Clippy 2.0 #tag("python") #tag("nlp")],
      description: lorem(19),
    ),
    main_entry(
      when: [since 2020],
      title: [EduROMBitcoinFarm],
      description: lorem(8),
    ),
    main_entry(
      when: [2021],
      title: [Stremiaux],
      description: lorem(12),
    ),
    main_entry(
      title: [MPoxTracker],
      description: lorem(14),
    ),
  ),
)
