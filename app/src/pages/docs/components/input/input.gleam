import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/input/attributes.{attributes}
import pages/docs/components/input/examples.{examples}
import pages/docs/components/input/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Input",
      "An area where users can input data, such as text, numbers, or selections, typically used within forms.",
    ),
    section.installation("gleam run -m gleez add input"),
    variants(),
    attributes(),
    examples(),
  ])
}
