import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/components/divider/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "divider",
      "A horizontal or vertical line used to visually separate content or sections within a layout.",
    ),
    section.installation("gleam run -m gleez add divider"),
    variants(),
  ])
}
