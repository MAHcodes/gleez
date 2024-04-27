import components/preview.{preview}
import components/ui/chip.{chip}
import gleam/string
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import pages/docs/components/chip/attributes.{attributes}
import pages/docs/components/chip/examples.{examples}
import pages/docs/components/chip/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "Chip",
      "A Chip is a small block of essential information that represent an input, attribute, or action.",
    ),
    section.installation("gleam run -m gleez add chip"),
    variants(),
    attributes(),
    examples(),
  ])
}
