import components/preview.{preview}
import components/ui/input.{input}
import gleam/string
import lustre/attribute.{placeholder}
import lustre/element.{type Element}
import lustre/element/html.{div, text}

pub fn docs() -> Element(a) {
  div([], [
    preview(
      [
        input([
          input.outline(input.Neutral),
          input.md(),
          placeholder("Outline Neutral"),
        ]),
        input([
          input.outline(input.Primary),
          input.md(),
          placeholder("Outline Primary"),
        ]),
        input([
          input.outline(input.Secondary),
          input.md(),
          placeholder("Outline Secondary"),
        ]),
        input([
          input.outline(input.Success),
          input.md(),
          placeholder("Outline Success"),
        ]),
        input([
          input.outline(input.Info),
          input.md(),
          placeholder("Outline Info"),
        ]),
        input([
          input.outline(input.Warning),
          input.md(),
          placeholder("Outline Warning"),
        ]),
        input([
          input.outline(input.Danger),
          input.md(),
          placeholder("Outline Danger"),
        ]),
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

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    input([
      input.outline(input.Neutral),
      input.md(),
      placeholder(\"Outline Neutral\"),
    ]),
    input([
      input.outline(input.Primary),
      input.md(),
      placeholder(\"Outline Primary\"),
    ]),
    input([
      input.outline(input.Secondary),
      input.md(),
      placeholder(\"Outline Secondary\"),
    ]),
    input([
      input.outline(input.Success),
      input.md(),
      placeholder(\"Outline Success\"),
    ]),
    input([input.outline(input.Info), input.md(), placeholder(\"Outline Info\")]),
    input([
      input.outline(input.Warning),
      input.md(),
      placeholder(\"Outline Warning\"),
    ]),
    input([
      input.outline(input.Danger),
      input.md(),
      placeholder(\"Outline Danger\"),
    ]),
  ])
}
"
  |> string.trim
}
