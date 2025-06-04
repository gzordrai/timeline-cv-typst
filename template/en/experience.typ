#import "../../timeline-cv.typ": *
#let metadata = toml("../metadata.toml")
#let main_entry = main_entry.with(data: metadata)

#section_timeline(
  title: "Professional Experience",
  content: (
    main_entry(
      when: [since sept. 2021],
      where: [Beelzebub Inc],
      title: [Head of the Human Rights Department],
    )[#lorem(32)],
    main_entry(
      when: [sept. 2019 – nov. 2021],
      where: [Quetzalcoatl & co],
      details: [Hamburg, #smallcaps[de]],
      title: [Special Advisor],
    )[#lorem(14)],
    main_entry(
      when: [feb. 2011 – aug. 2019],
      where: [Isis #smallcaps[sarl]],
      title: [Research Engineer],
    )[#lorem(20)],
    main_entry(
      when: [apr 2006 – july 2006],
      where: [Jupiter Inc],
      title: [Intern in the Human Ressources Department],
    )[#lorem(21)],
  ),
)
