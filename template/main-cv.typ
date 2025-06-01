#import "../timeline-cv.typ": *
#let metadata = toml("./metadata.toml")

#let side = [
  #lorem(100)
]
#let main = [
  #lorem(250)
]
#show: cv.with(
  metadata: metadata,
  side: side,
  main: main,
)
