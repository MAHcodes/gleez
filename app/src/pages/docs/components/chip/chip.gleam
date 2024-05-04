import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/chip/attributes.{attributes}
import pages/docs/components/chip/examples.{examples}
import pages/docs/components/chip/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Chip",
      "A compact element representing complex information, often used for attributes, tags, or selections.",
    ),
    section.installation("gleam run -m gleez add chip"),
    variants(),
    attributes(),
    examples(),
  ])
}
