import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/components/input/attributes.{attributes}
import pages/docs/components/input/examples.{examples}
import pages/docs/components/input/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "Input",
      "An area where users can input data, such as text, numbers, or selections, typically used within forms.",
    ),
    section.installation("gleam run -m gleez add input"),
    variants(),
    attributes(),
    examples(),
  ])
}
