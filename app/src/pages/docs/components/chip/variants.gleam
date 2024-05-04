import components/ui/chip.{chip}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        chip([chip.solid(chip.Neutral), chip.md()], [text("Neutral")]),
        chip([chip.solid(chip.Primary), chip.md()], [text("Primary")]),
        chip([chip.solid(chip.Secondary), chip.md()], [text("Secondary")]),
        chip([chip.solid(chip.Success), chip.md()], [text("Success")]),
        chip([chip.solid(chip.Info), chip.md()], [text("Info")]),
        chip([chip.solid(chip.Warning), chip.md()], [text("Warning")]),
        chip([chip.solid(chip.Danger), chip.md()], [text("Danger")]),
      ],
      solid_code(),
    ),
    section.variant(
      "Outlined",
      "",
      [
        chip([chip.outlined(chip.Neutral), chip.md()], [text("Neutral")]),
        chip([chip.outlined(chip.Primary), chip.md()], [text("Primary")]),
        chip([chip.outlined(chip.Secondary), chip.md()], [text("Secondary")]),
        chip([chip.outlined(chip.Success), chip.md()], [text("Success")]),
        chip([chip.outlined(chip.Info), chip.md()], [text("Info")]),
        chip([chip.outlined(chip.Warning), chip.md()], [text("Warning")]),
        chip([chip.outlined(chip.Danger), chip.md()], [text("Danger")]),
      ],
      outlined_code(),
    ),
    section.variant(
      "Light",
      "",
      [
        chip([chip.light(chip.Neutral), chip.md()], [text("Neutral")]),
        chip([chip.light(chip.Primary), chip.md()], [text("Primary")]),
        chip([chip.light(chip.Secondary), chip.md()], [text("Secondary")]),
        chip([chip.light(chip.Success), chip.md()], [text("Success")]),
        chip([chip.light(chip.Info), chip.md()], [text("Info")]),
        chip([chip.light(chip.Warning), chip.md()], [text("Warning")]),
        chip([chip.light(chip.Danger), chip.md()], [text("Danger")]),
      ],
      light_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        chip([chip.flat(chip.Neutral), chip.md()], [text("Neutral")]),
        chip([chip.flat(chip.Primary), chip.md()], [text("Primary")]),
        chip([chip.flat(chip.Secondary), chip.md()], [text("Secondary")]),
        chip([chip.flat(chip.Success), chip.md()], [text("Success")]),
        chip([chip.flat(chip.Info), chip.md()], [text("Info")]),
        chip([chip.flat(chip.Warning), chip.md()], [text("Warning")]),
        chip([chip.flat(chip.Danger), chip.md()], [text("Danger")]),
      ],
      flat_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/chip.{chip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    chip([chip.solid(chip.Neutral), chip.md()], [text(\"Neutral\")]),
    chip([chip.solid(chip.Primary), chip.md()], [text(\"Primary\")]),
    chip([chip.solid(chip.Secondary), chip.md()], [text(\"Secondary\")]),
    chip([chip.solid(chip.Success), chip.md()], [text(\"Success\")]),
    chip([chip.solid(chip.Info), chip.md()], [text(\"Info\")]),
    chip([chip.solid(chip.Warning), chip.md()], [text(\"Warning\")]),
    chip([chip.solid(chip.Danger), chip.md()], [text(\"Danger\")]),
  ])
}
"
}

fn outlined_code() -> String {
  "
import components/ui/chip.{chip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    chip([chip.outlined(chip.Neutral), chip.md()], [text(\"Neutral\")]),
    chip([chip.outlined(chip.Primary), chip.md()], [text(\"Primary\")]),
    chip([chip.outlined(chip.Secondary), chip.md()], [text(\"Secondary\")]),
    chip([chip.outlined(chip.Success), chip.md()], [text(\"Success\")]),
    chip([chip.outlined(chip.Info), chip.md()], [text(\"Info\")]),
    chip([chip.outlined(chip.Warning), chip.md()], [text(\"Warning\")]),
    chip([chip.outlined(chip.Danger), chip.md()], [text(\"Danger\")]),
  ])
}
"
}

fn light_code() -> String {
  "
import components/ui/chip.{chip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    chip([chip.light(chip.Neutral), chip.md()], [text(\"Neutral\")]),
    chip([chip.light(chip.Primary), chip.md()], [text(\"Primary\")]),
    chip([chip.light(chip.Secondary), chip.md()], [text(\"Secondary\")]),
    chip([chip.light(chip.Success), chip.md()], [text(\"Success\")]),
    chip([chip.light(chip.Info), chip.md()], [text(\"Info\")]),
    chip([chip.light(chip.Warning), chip.md()], [text(\"Warning\")]),
    chip([chip.light(chip.Danger), chip.md()], [text(\"Danger\")]),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/chip.{chip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    chip([chip.flat(chip.Neutral), chip.md()], [text(\"Neutral\")]),
    chip([chip.flat(chip.Primary), chip.md()], [text(\"Primary\")]),
    chip([chip.flat(chip.Secondary), chip.md()], [text(\"Secondary\")]),
    chip([chip.flat(chip.Success), chip.md()], [text(\"Success\")]),
    chip([chip.flat(chip.Info), chip.md()], [text(\"Info\")]),
    chip([chip.flat(chip.Warning), chip.md()], [text(\"Warning\")]),
    chip([chip.flat(chip.Danger), chip.md()], [text(\"Danger\")]),
  ])
}
"
}
