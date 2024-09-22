import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/alert/attributes.{attributes}
import pages/docs/components/alert/examples.{examples}
import pages/docs/components/alert/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Alert",
      "Alerts are used to display important messages inline or as toast notifications.",
    ),
    section.installation("gleam run -m gleez add alert"),
    variants(),
    attributes(),
    examples(),
  ])
}
