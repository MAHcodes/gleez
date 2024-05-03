import components/ui/input.{input}
import lustre/attribute.{placeholder}
import lustre/element.{type Element}
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
        input([input.flat(input.Neutral), input.sm(), placeholder("Small")]),
        input([input.flat(input.Neutral), input.md(), placeholder("Medium")]),
        input([input.flat(input.Neutral), input.lg(), placeholder("Large")]),
      ],
      size_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/input.{input}
import lustre/attribute.{class, placeholder}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    input([input.flat(input.Neutral), input.sm(), placeholder(\"Small\")]),
    input([input.flat(input.Neutral), input.md(), placeholder(\"Medium\")]),
    input([input.flat(input.Neutral), input.lg(), placeholder(\"Large\")]),
  ])
}
"
}
