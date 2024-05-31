import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/radio/attributes.{attributes}
import pages/docs/components/radio/examples.{examples}
import pages/docs/components/radio/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Radio",
      "The Radio Group allows the user to select one option from a set.",
    ),
    section.installation("gleam run -m gleez add radio"),
    variants(),
    attributes(),
    examples(),
  ])
}
