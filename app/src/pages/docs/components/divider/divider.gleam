import components/preview.{preview}
import components/ui/divider.{divider}
import gleam/string
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import pages/docs/components/divider/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "divider",
      "Divider is a component that separates content in a page.",
    ),
    section.installation("gleam run -m gleez add divider"),
    variants(),
  ])
}
