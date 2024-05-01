import components/ui/tooltip.{tooltip}
import gleam/string
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
      ],
    ""
    ),
  ])
}
