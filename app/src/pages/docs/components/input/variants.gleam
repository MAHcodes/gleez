import components/ui/input.{input}
import gleam/string
import lustre/attribute.{placeholder}
import lustre/element.{type Element}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Outline",
      "",
      [
        input([input.outline(input.Neutral), input.md(), placeholder("Neutral")]),
        input([input.outline(input.Primary), input.md(), placeholder("Primary")]),
        input([
          input.outline(input.Secondary),
          input.md(),
          placeholder("Secondary"),
        ]),
        input([input.outline(input.Success), input.md(), placeholder("Success")]),
        input([input.outline(input.Info), input.md(), placeholder("Info")]),
        input([input.outline(input.Warning), input.md(), placeholder("Warning")]),
        input([input.outline(input.Danger), input.md(), placeholder("Danger")]),
      ],
      solid_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/input.{input}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn inputs() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    input([
      input.outline(input.Neutral),
      input.md(),
      placeholder(\"Neutral\"),
    ]),
    input([
      input.outline(input.Primary),
      input.md(),
      placeholder(\"Primary\"),
    ]),
    input([
      input.outline(input.Secondary),
      input.md(),
      placeholder(\"Secondary\"),
    ]),
    input([
      input.outline(input.Success),
      input.md(),
      placeholder(\"Success\"),
    ]),
    input([input.outline(input.Info), input.md(), placeholder(\"Info\")]),
    input([
      input.outline(input.Warning),
      input.md(),
      placeholder(\"Warning\"),
    ]),
    input([
      input.outline(input.Danger),
      input.md(),
      placeholder(\"Danger\"),
    ]),
  ])
}
"
  |> string.trim
}
