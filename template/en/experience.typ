#import "../../timeline-cv.typ": *
#let metadata = toml("../metadata.toml")
#let main_entry = main_entry.with(data: metadata)

#section_timeline(
  title: "Professional Experience",
  content: (
    main_entry(
      when: [since Sept. 2021],
      where: [Beelzebub Inc],
      title: [Head of the Human Rights Department],
    )[#lorem(32)],
    main_entry(
      when: [Sept. 2019 – Nov. 2021],
      where: [Quetzalcoatl & co],
      details: [Hamburg, #smallcaps[de]],
      title: [Special Advisor],
    )[#lorem(14)],
    main_entry(
      when: [Feb. 2011 – Aug. 2019],
      where: [Isis #smallcaps[sarl]],
      title: [Research Engineer],
    )[#lorem(20)],
    main_entry(
      when: [Apr 2006 – July 2006],
      where: [Jupiter Inc],
      title: [Intern in the Human Ressources Department],
    )[#lorem(21)],
  ),
)
