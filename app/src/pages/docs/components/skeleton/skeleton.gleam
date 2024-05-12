import components/prose.{prose}
import lustre/element.{type Element}
import pages/docs/components/skeleton/examples.{examples}
import pages/docs/components/skeleton/variants.{variants}
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  prose([], [
    section.intro(
      "Skeleton",
      "Provide a placeholder while you wait for content to load, or to visualise content that doesn't exist yet.",
    ),
    section.installation("gleam run -m gleez add skeleton"),
    variants(),
    examples(),
  ])
}
