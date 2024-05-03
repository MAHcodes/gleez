import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/ui/icon
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
        button([button.solid(button.Neutral), button.icon()], [
          icon.star_filled([class("w-5")]),
        ]),
        button([button.solid(button.Neutral), button.sm()], [text("Small")]),
        button([button.solid(button.Neutral), button.md()], [text("Medium")]),
        button([button.solid(button.Neutral), button.lg()], [text("Large")]),
      ],
      size_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/button.{button}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class}
import lustre/ui/icon

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.solid(button.Neutral), button.icon()], [
      icon.star_filled([class(\"w-5\")]),
    ]),
    button([button.solid(button.Neutral), button.sm()], [text(\"Small\")]),
    button([button.solid(button.Neutral), button.md()], [text(\"Medium\")]),
    button([button.solid(button.Neutral), button.lg()], [text(\"Large\")]),
  ])
}
"
}
