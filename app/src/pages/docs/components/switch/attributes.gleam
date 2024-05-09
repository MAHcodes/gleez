import components/ui/switch.{switch}
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
        switch([switch.solid(switch.Neutral), switch.sm()], [text("Small")]),
        switch([switch.solid(switch.Neutral), switch.md()], [text("Medium")]),
        switch([switch.solid(switch.Neutral), switch.lg()], [text("Large")]),
      ],
      size_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/switch.{switch}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    switch([switch.solid(switch.Neutral), switch.sm()], [text(\"Small\")]),
    switch([switch.solid(switch.Neutral), switch.md()], [text(\"Medium\")]),
    switch([switch.solid(switch.Neutral), switch.lg()], [text(\"Large\")]),
  ])
}
"
}
