import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/checkbox/attributes.{attributes}
import pages/docs/components/checkbox/examples.{examples}
import pages/docs/components/checkbox/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Checkbox",
      "Checkboxes allow the user to select one or more items from a set.",
    ),
    section.installation("gleam run -m gleez add checkbox"),
    variants(),
    attributes(),
    examples(),
  ])
}
