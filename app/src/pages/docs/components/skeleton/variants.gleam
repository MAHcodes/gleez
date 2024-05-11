import components/ui/skeleton.{skeleton}
import lustre/attribute.{class}
import lustre/element.{type Element}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        skeleton([
          class("w-full h-6 rounded-md"),
          skeleton.solid(skeleton.Neutral),
        ]),
        skeleton([
          class("w-full h-6 rounded-md"),
          skeleton.solid(skeleton.Primary),
        ]),
        skeleton([
          class("w-full h-6 rounded-md"),
          skeleton.solid(skeleton.Secondary),
        ]),
        skeleton([
          class("w-full h-6 rounded-md"),
          skeleton.solid(skeleton.Success),
        ]),
        skeleton([class("w-full h-6 rounded-md"), skeleton.solid(skeleton.Info)]),
        skeleton([
          class("w-full h-6 rounded-md"),
          skeleton.solid(skeleton.Warning),
        ]),
        skeleton([
          class("w-full h-6 rounded-md"),
          skeleton.solid(skeleton.Danger),
        ]),
      ],
      solid_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/skeleton.{skeleton}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col items-center gap-8 w-full\")], [
    skeleton([class(\"w-full h-6 rounded-md\"), skeleton.solid(skeleton.Neutral)]),
    skeleton([class(\"w-full h-6 rounded-md\"), skeleton.solid(skeleton.Primary)]),
    skeleton([class(\"w-full h-6 rounded-md\"), skeleton.solid(skeleton.Secondary)]),
    skeleton([class(\"w-full h-6 rounded-md\"), skeleton.solid(skeleton.Success)]),
    skeleton([class(\"w-full h-6 rounded-md\"), skeleton.solid(skeleton.Info)]),
    skeleton([class(\"w-full h-6 rounded-md\"), skeleton.solid(skeleton.Warning)]),
    skeleton([class(\"w-full h-6 rounded-md\"), skeleton.solid(skeleton.Danger)]),
  ])
}
"
}
