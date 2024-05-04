import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/link/attributes.{attributes}
import pages/docs/components/link/examples.{examples}
import pages/docs/components/link/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Link",
      "A clickable element that navigates to another document or resource, typically represented as text or an icon.",
    ),
    section.installation("gleam run -m gleez add link"),
    variants(),
    attributes(),
    examples(),
  ])
}
