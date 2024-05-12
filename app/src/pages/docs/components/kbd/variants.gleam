import components/ui/kbd.{kbd}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        kbd([kbd.solid(kbd.Neutral), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.solid(kbd.Primary), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.solid(kbd.Secondary), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.solid(kbd.Success), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.solid(kbd.Info), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.solid(kbd.Warning), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.solid(kbd.Danger), kbd.md()], [kbd.command(), text("K")]),
      ],
      solid_code(),
    ),
    section.variant(
      "Outlined",
      "",
      [
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.outlined(kbd.Primary), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.outlined(kbd.Secondary), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.outlined(kbd.Success), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.outlined(kbd.Info), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.outlined(kbd.Warning), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.outlined(kbd.Danger), kbd.md()], [kbd.command(), text("K")]),
      ],
      outlined_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        kbd([kbd.flat(kbd.Neutral), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.flat(kbd.Primary), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.flat(kbd.Secondary), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.flat(kbd.Success), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.flat(kbd.Info), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.flat(kbd.Warning), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.flat(kbd.Danger), kbd.md()], [kbd.command(), text("K")]),
      ],
      flat_code(),
    ),
    section.variant(
      "Light",
      "",
      [
        kbd([kbd.light(kbd.Neutral), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.light(kbd.Primary), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.light(kbd.Secondary), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.light(kbd.Success), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.light(kbd.Info), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.light(kbd.Warning), kbd.md()], [kbd.command(), text("K")]),
        kbd([kbd.light(kbd.Danger), kbd.md()], [kbd.command(), text("K")]),
      ],
      light_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/kbd.{kbd}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    kbd([kbd.solid(kbd.Neutral), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.solid(kbd.Primary), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.solid(kbd.Secondary), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.solid(kbd.Success), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.solid(kbd.Info), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.solid(kbd.Warning), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.solid(kbd.Danger), kbd.md()], [kbd.command(), text(\"K\")]),
  ])
}
"
}

fn outlined_code() -> String {
  "
import components/ui/kbd.{kbd}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.outlined(kbd.Primary), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.outlined(kbd.Secondary), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.outlined(kbd.Success), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.outlined(kbd.Info), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.outlined(kbd.Warning), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.outlined(kbd.Danger), kbd.md()], [kbd.command(), text(\"K\")]),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/kbd.{kbd}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    kbd([kbd.flat(kbd.Neutral), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.flat(kbd.Primary), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.flat(kbd.Secondary), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.flat(kbd.Success), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.flat(kbd.Info), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.flat(kbd.Warning), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.flat(kbd.Danger), kbd.md()], [kbd.command(), text(\"K\")]),
  ])
}
"
}

fn light_code() -> String {
  "
import components/ui/kbd.{kbd}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    kbd([kbd.light(kbd.Neutral), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.light(kbd.Primary), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.light(kbd.Secondary), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.light(kbd.Success), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.light(kbd.Info), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.light(kbd.Warning), kbd.md()], [kbd.command(), text(\"K\")]),
    kbd([kbd.light(kbd.Danger), kbd.md()], [kbd.command(), text(\"K\")]),
  ])
}
"
}
