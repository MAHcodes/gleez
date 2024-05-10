import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/sections/section

pub fn attributes() -> Element(a) {
  section.attributes([
    section.attribute(
      "Horizontal",
      "
- `horizontal()`: Horizontal line
    ",
      [
        divider([
          divider.solid(divider.Neutral),
          divider.horizontal(),
          divider.md(),
        ]),
      ],
      horizontal_code(),
    ),
    section.attribute(
      "Vertical",
      "
- `vertical()`: Vertical line
    ",
      [
        div([class("h-12")], [
          divider([
            divider.solid(divider.Neutral),
            divider.vertical(),
            divider.md(),
          ]),
        ]),
      ],
      vertical_code(),
    ),
    section.attribute(
      "Size",
      "
- `sm()`: Small Size
- `md()`: Medium Size
- `lg()`: Large Size
    ",
      [
        div([class("flex flex-col items-center gap-8 w-full")], [
          divider([
            divider.solid(divider.Neutral),
            divider.horizontal(),
            divider.sm(),
          ]),
          divider([
            divider.solid(divider.Neutral),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.solid(divider.Neutral),
            divider.horizontal(),
            divider.lg(),
          ]),
        ]),
      ],
      size_code(),
    ),
  ])
}

fn horizontal_code() -> String {
  "
import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col items-center gap-8 w-full\")], [
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.md()]),
  ])
}
"
}

fn vertical_code() -> String {
  "
import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex items-center justify-center gap-8 w-full h-12\")], [
    divider([divider.solid(divider.Neutral), divider.vertical(), divider.md()]),
  ])
}
"
}

fn size_code() -> String {
  "
import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col items-center gap-8 w-full\")], [
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.sm()]),
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.md()]),
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.lg()]),
  ])
}
"
}
