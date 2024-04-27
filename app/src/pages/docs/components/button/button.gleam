import components/preview.{preview}
import components/ui/button.{button}
import gleam/string
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import pages/docs/sections/section
import pages/docs/components/button/attributes.{attributes}
import pages/docs/components/button/examples.{examples}
import pages/docs/components/button/variants.{variants}

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "Button",
      "Buttons allow users to perform actions and choose with a single tap.",
    ),
    section.installation("gleam run -m gleez add button"),
    variants(),
    attributes(),
    examples(),
  ])
}
