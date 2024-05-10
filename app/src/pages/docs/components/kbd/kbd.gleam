import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/kbd/attributes.{attributes}
import pages/docs/components/kbd/examples.{examples}
import pages/docs/components/kbd/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Kbd",
      "The keyboard key component exists to show which key or combination of keys performs a given action.",
    ),
    section.installation("gleam run -m gleez add kbd"),
    variants(),
    attributes(),
    examples(),
  ])
}
