import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/badge/attributes.{attributes}
import pages/docs/components/badge/examples.{examples}
import pages/docs/components/badge/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
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
