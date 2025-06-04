#import "../../timeline-cv.typ": *
#let metadata = toml("../metadata.toml")
#let side_entry = side_entry.with(data: metadata)

#section_items(
  title: "Associative Experience",
  (
    side_entry(
      title: [Member],
      preposition: [of the],
      where: [City Council of Vienna],
      when: [since Mar. 2025],
    )[],
    side_entry(
      title: [President],
      preposition: [of the],
      where: [XY Club],
      when: [Aug. 2016 – Sep. 2018],
    )[],
    side_entry(
      title: [Secretary],
      preposition: [of the],
      where: [National Jazz Band of Krakow],
      when: [Feb. 2012 – Mar. 2013],
    )[],
  ),
)
