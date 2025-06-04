#import "../../timeline-cv.typ": *
#let metadata = toml("../metadata.toml")
#let main_entry = main_entry.with(data: metadata)

#section_timeline(
  title: "Education",
  content: (
    main_entry(
      when: [sept 2006 – aug. 2010],
      where: [National University of Illiberal Arts],
      details: [Berne, #smallcaps[ch]],
      title: [Ph.D. in Robotics],
    )[#lorem(31)],
    main_entry(
      when: [sept 2004 – aug. 2006],
      where: [École Normale Supérieure de Tourcoing],
      title: [Masters of Mathematics and Biology],
    )[#lorem(15)],
    main_entry(
      when: [sept 2001 – aug. 2004],
      where: [Waterside University],
      title: [Bachelor of Mathematics],
    )[],
  ),
)
