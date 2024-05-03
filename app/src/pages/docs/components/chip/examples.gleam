import components/ui/chip.{chip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/ui/icon
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "With Icons",
      "",
      [
        chip([chip.solid(chip.Neutral), chip.md()], [
          icon.star_filled([class("w-4")]),
          text("Icon Start"),
        ]),
        chip([chip.solid(chip.Neutral), chip.md()], [
          text("Icon End"),
          icon.star_filled([class("w-4")]),
        ]),
      ],
      with_icons_code(),
    ),
  ])
}

fn with_icons_code() -> String {
  "
import components/ui/chip.{chip}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    chip([chip.solid(chip.Neutral), chip.md()], [
      icon.star_filled([class(\"w-4\")]),
      text(\"Icon Start\"),
    ]),
    chip([chip.solid(chip.Neutral), chip.md()], [
      text(\"Icon End\"),
      icon.star_filled([class(\"w-4\")]),
    ]),
  ])
}
"
}
