import components/ui/checkbox.{checkbox}
import lustre/element.{type Element, text}
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
        checkbox([checkbox.solid(checkbox.Neutral), checkbox.sm()], [
          text("Small"),
        ]),
        checkbox([checkbox.solid(checkbox.Neutral), checkbox.md()], [
          text("Medium"),
        ]),
        checkbox([checkbox.solid(checkbox.Neutral), checkbox.lg()], [
          text("Large"),
        ]),
      ],
      size_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/checkbox.{checkbox}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    checkbox([checkbox.solid(checkbox.Neutral), checkbox.sm()], [text(\"Small\")]),
    checkbox([checkbox.solid(checkbox.Neutral), checkbox.md()], [text(\"Medium\")]),
    checkbox([checkbox.solid(checkbox.Neutral), checkbox.lg()], [text(\"Large\")]),
  ])
}
"
}
