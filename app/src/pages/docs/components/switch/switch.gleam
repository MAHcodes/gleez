import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/switch/attributes.{attributes}
import pages/docs/components/switch/examples.{examples}
import pages/docs/components/switch/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Switch",
      "Switches toggle the state of a single setting on or off.",
    ),
    section.installation("gleam run -m gleez add switch"),
    variants(),
    attributes(),
    examples(),
  ])
}
