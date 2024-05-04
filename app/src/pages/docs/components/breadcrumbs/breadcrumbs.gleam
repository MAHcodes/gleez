import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/breadcrumbs/attributes.{attributes}
import pages/docs/components/breadcrumbs/examples.{examples}
import pages/docs/components/breadcrumbs/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Breadcrumbs",
      "A supplementary form of navigation that helps users reach pages within the structure of an interface",
    ),
    section.installation("gleam run -m gleez add breadcrumbs"),
    variants(),
    attributes(),
    examples(),
  ])
}
