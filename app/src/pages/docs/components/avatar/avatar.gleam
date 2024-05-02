import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/components/avatar/attributes.{attributes}
import pages/docs/components/avatar/variants.{variants}
import pages/docs/components/avatar/examples.{examples}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([class("prose")], [
    section.intro(
      "Avatar",
      "An image element with a fallback for representing the user.",
    ),
    section.installation("gleam run -m gleez add avatar"),
    variants(),
    attributes(),
    examples(),
  ])
}
