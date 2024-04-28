import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/components/input/variants.{variants}
import pages/docs/components/input/attributes.{attributes}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "Input",
      "Input is a component that allows users to enter text. It can be used to get user inputs in forms, search fields, and more.",
    ),
    section.installation("gleam run -m gleez add input"),
    variants(),
    attributes(),
  ])
}
