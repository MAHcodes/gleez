import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/components/button/attributes.{attributes}
import pages/docs/components/button/examples.{examples}
import pages/docs/components/button/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "Button",
      "An interactive element that users can click or tap to perform an action or submit a form.",
    ),
    section.installation("gleam run -m gleez add button"),
    variants(),
    attributes(),
    examples(),
  ])
}
