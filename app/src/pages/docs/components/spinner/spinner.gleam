import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/spinner/attributes.{attributes}
import pages/docs/components/spinner/examples.{examples}
import pages/docs/components/spinner/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Spinner",
      "Spinners provide a visual cue that an action is processing awaiting a course of change or a result.",
    ),
    section.installation("gleam run -m gleez add spinner"),
    variants(),
    attributes(),
    examples(),
  ])
}
