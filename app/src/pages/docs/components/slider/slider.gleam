import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/slider/attributes.{attributes}
import pages/docs/components/slider/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Slider",
      "The slider can be used to set the start and end of a range by supplying an array of values to the value prop.",
    ),
    section.installation("gleam run -m gleez add slider"),
    variants(),
    attributes(),
  ])
}
