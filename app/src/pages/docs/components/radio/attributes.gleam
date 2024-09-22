import components/ui/radio.{radio}
import lustre/attribute.{name}
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
        radio([radio.ghost(radio.Neutral), radio.sm(), name("demo")], [
          text("Small"),
        ]),
        radio([radio.ghost(radio.Neutral), radio.md(), name("demo")], [
          text("Medium"),
        ]),
        radio([radio.ghost(radio.Neutral), radio.lg(), name("demo")], [
          text("Large"),
        ]),
      ],
      size_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/radio.{radio}
import lustre/attribute.{class, name}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    radio([radio.ghost(radio.Neutral), radio.sm(), name(\"demo\")], [
      text(\"Small\"),
    ]),
    radio([radio.ghost(radio.Neutral), radio.md(), name(\"demo\")], [
      text(\"Medium\"),
    ]),
    radio([radio.ghost(radio.Neutral), radio.lg(), name(\"demo\")], [
      text(\"Large\"),
    ]),
  ])
}
"
}
