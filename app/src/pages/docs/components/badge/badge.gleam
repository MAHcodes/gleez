import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/components/badge/attributes.{attributes}
import pages/docs/components/badge/variants.{variants}
import pages/docs/components/badge/examples.{examples}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "Badge",
      "Badges are visual indicators that represent statuses, notifications, and short messages.",
    ),
    section.installation("gleam run -m gleez add badge"),
    variants(),
    attributes(),
    examples(),
  ])
}
