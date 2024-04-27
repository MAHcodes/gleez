import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/components/link/attributes.{attributes}
import pages/docs/components/link/examples.{examples}
import pages/docs/components/link/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "Link",
      "Links allow users to click their way from page to page. This component is styled to resemble a hyperlink and semantically renders an <a>.",
    ),
    section.installation("gleam run -m gleez add link"),
    variants(),
    attributes(),
    examples(),
  ])
}
