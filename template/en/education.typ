#import "../../timeline-cv.typ": *
#let metadata = toml("../metadata.toml")
#let main_entry = main_entry.with(data: metadata)

#timeline_section(
  title: "Education",
  content: (
    main_entry(
      when: [sept 2006 – aug. 2010],
      where: [National University of Illiberal Arts],
      title: [Ph.D. in Robotics],
      description: lorem(31),
    ),
    main_entry(
      when: [sept 2004 – aug. 2006],
      where: [École Normale Supérieure de Tourcoing],
      title: [Masters of Mathematics and Biology],
      description: lorem(15),
    ),
    main_entry(
      when: [sept 2001 – aug. 2004],
      where: [Waterside University],
      title: [Bachelor of Mathematics],
    ),
  ),
)
