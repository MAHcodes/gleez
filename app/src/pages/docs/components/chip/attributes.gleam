import components/ui/chip.{chip}
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
        chip([chip.solid(chip.Neutral), chip.sm()], [text("Small")]),
        chip([chip.solid(chip.Neutral), chip.md()], [text("Medium")]),
        chip([chip.solid(chip.Neutral), chip.lg()], [text("Large")]),
      ],
      size_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/chip.{chip}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    chip([chip.solid(chip.Neutral), chip.sm()], [text(\"Small\")]),
    chip([chip.solid(chip.Neutral), chip.md()], [text(\"Medium\")]),
    chip([chip.solid(chip.Neutral), chip.lg()], [text(\"Large\")]),
  ])
}
"
}
