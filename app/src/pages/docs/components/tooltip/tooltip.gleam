import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/tooltip/attributes.{attributes}
import pages/docs/components/tooltip/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Tooltip",
      "A small pop-up box that appears when hovering over an element, providing supplementary information or descriptions.",
    ),
    section.installation("gleam run -m gleez add tooltip"),
    variants(),
    attributes(),
  ])
}
