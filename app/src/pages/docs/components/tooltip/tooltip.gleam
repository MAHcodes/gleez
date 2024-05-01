import components/preview.{preview}
import components/ui/tooltip.{tooltip}
import gleam/string
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import pages/docs/components/tooltip/attributes.{attributes}
import pages/docs/components/tooltip/examples.{examples}
import pages/docs/components/tooltip/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "Tooltip",
      "Tooltips display a brief, informative message that appears when a user interacts with an element.",
    ),
    section.installation("gleam run -m gleez add tooltip"),
    variants(),
    attributes(),
    examples(),
  ])
}
