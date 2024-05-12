import components/ui/slider.{slider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/sections/section

pub fn attributes() -> Element(a) {
  section.attributes([
    section.attribute(
      "Size",
      "
- `sm()`: Small Size
- `md()`: Medium Size
- `lg()`: Large Size
    ",
      [
        div([class("flex flex-col gap-4 w-full max-w-xs")], [
          slider([slider.outlined(slider.Neutral), slider.sm()]),
          slider([slider.outlined(slider.Neutral), slider.md()]),
          slider([slider.outlined(slider.Neutral), slider.lg()]),
        ]),
      ],
      size_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/slider.{slider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col gap-4 w-full max-w-xs\")], [
    slider([slider.outlined(slider.Neutral), slider.sm()]),
    slider([slider.outlined(slider.Neutral), slider.md()]),
    slider([slider.outlined(slider.Neutral), slider.lg()]),
  ])
}
"
}
