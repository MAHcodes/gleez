import components/ui/input.{input}
import lustre/attribute.{placeholder}
import lustre/element.{type Element}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Outlined",
      "",
      [
        input([
          input.outlined(input.Neutral),
          input.md(),
          placeholder("Neutral"),
        ]),
        input([
          input.outlined(input.Primary),
          input.md(),
          placeholder("Primary"),
        ]),
        input([
          input.outlined(input.Secondary),
          input.md(),
          placeholder("Secondary"),
        ]),
        input([
          input.outlined(input.Success),
          input.md(),
          placeholder("Success"),
        ]),
        input([input.outlined(input.Info), input.md(), placeholder("Info")]),
        input([
          input.outlined(input.Warning),
          input.md(),
          placeholder("Warning"),
        ]),
        input([input.outlined(input.Danger), input.md(), placeholder("Danger")]),
      ],
      outlined_code(),
    ),
    section.variant(
      "Underlined",
      "",
      [
        input([
          input.underlined(input.Neutral),
          input.md(),
          placeholder("Neutral"),
        ]),
        input([
          input.underlined(input.Primary),
          input.md(),
          placeholder("Primary"),
        ]),
        input([
          input.underlined(input.Secondary),
          input.md(),
          placeholder("Secondary"),
        ]),
        input([
          input.underlined(input.Success),
          input.md(),
          placeholder("Success"),
        ]),
        input([input.underlined(input.Info), input.md(), placeholder("Info")]),
        input([
          input.underlined(input.Warning),
          input.md(),
          placeholder("Warning"),
        ]),
        input([
          input.underlined(input.Danger),
          input.md(),
          placeholder("Danger"),
        ]),
      ],
      underlined_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        input([input.flat(input.Neutral), input.md(), placeholder("Neutral")]),
        input([input.flat(input.Primary), input.md(), placeholder("Primary")]),
        input([
          input.flat(input.Secondary),
          input.md(),
          placeholder("Secondary"),
        ]),
        input([input.flat(input.Success), input.md(), placeholder("Success")]),
        input([input.flat(input.Info), input.md(), placeholder("Info")]),
        input([input.flat(input.Warning), input.md(), placeholder("Warning")]),
        input([input.flat(input.Danger), input.md(), placeholder("Danger")]),
      ],
      flat_code(),
    ),
  ])
}

fn outlined_code() -> String {
  "
import components/ui/input.{input}
import lustre/attribute.{class, placeholder}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    input([input.outlined(input.Neutral), input.md(), placeholder(\"Neutral\")]),
    input([input.outlined(input.Primary), input.md(), placeholder(\"Primary\")]),
    input([input.outlined(input.Secondary), input.md(), placeholder(\"Secondary\")]),
    input([input.outlined(input.Success), input.md(), placeholder(\"Success\")]),
    input([input.outlined(input.Info), input.md(), placeholder(\"Info\")]),
    input([input.outlined(input.Warning), input.md(), placeholder(\"Warning\")]),
    input([input.outlined(input.Danger), input.md(), placeholder(\"Danger\")]),
  ])
}
"
}

fn underlined_code() -> String {
  "
import components/ui/input.{input}
import lustre/attribute.{class, placeholder}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    input([input.underlined(input.Neutral), input.md(), placeholder(\"Neutral\")]),
    input([input.underlined(input.Primary), input.md(), placeholder(\"Primary\")]),
    input([input.underlined(input.Secondary), input.md(), placeholder(\"Secondary\")]),
    input([input.underlined(input.Success), input.md(), placeholder(\"Success\")]),
    input([input.underlined(input.Info), input.md(), placeholder(\"Info\")]),
    input([input.underlined(input.Warning), input.md(), placeholder(\"Warning\")]),
    input([input.underlined(input.Danger), input.md(), placeholder(\"Danger\")]),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/input.{input}
import lustre/attribute.{class, placeholder}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    input([input.flat(input.Neutral), input.md(), placeholder(\"Neutral\")]),
    input([input.flat(input.Primary), input.md(), placeholder(\"Primary\")]),
    input([input.flat(input.Secondary), input.md(), placeholder(\"Secondary\")]),
    input([input.flat(input.Success), input.md(), placeholder(\"Success\")]),
    input([input.flat(input.Info), input.md(), placeholder(\"Info\")]),
    input([input.flat(input.Warning), input.md(), placeholder(\"Warning\")]),
    input([input.flat(input.Danger), input.md(), placeholder(\"Danger\")]),
  ])
}
"
}
