import components/ui/kbd.{kbd}
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
        kbd([kbd.outlined(kbd.Neutral), kbd.sm()], [kbd.command(), text("K")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.lg()], [kbd.command(), text("K")]),
      ],
      size_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/kbd.{kbd}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    kbd([kbd.outlined(kbd.Neutral), kbd.sm()], [kbd.command(), text(\"K\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.lg()], [kbd.command(), text(\"K\")]),
  ])
}
"
}
