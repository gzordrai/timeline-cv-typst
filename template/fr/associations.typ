#import "../../timeline-cv.typ": *
#let metadata = toml("../metadata.toml")
#let entry_side = entry_side.with(data: metadata)

#section_items(
  title: "Expérience Associative",
  (
    entry_side(
      title: [Membre],
      preposition: [du],
      where: [Conseil Municipal de Vienne],
      when: [depuis mar. 2025],
    )[],
    entry_side(
      title: [Président],
      preposition: [du],
      where: [Club XY],
      when: [août 2016 – sep. 2018],
    )[],
  ),
)
