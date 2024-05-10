import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/divider/attributes.{attributes}
import pages/docs/components/divider/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Divider",
      "A horizontal or vertical line used to visually separate content or sections within a layout.",
    ),
    section.installation("gleam run -m gleez add divider"),
    variants(),
    attributes(),
  ])
}
