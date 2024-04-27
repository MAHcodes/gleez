import components/preview.{preview}
import components/ui/button.{button}
import gleam/string
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import pages/docs/components/button/intro

pub fn docs() -> Element(a) {
  div([], [
    intro.docs(),
    preview(
      [
        button([button.solid(button.Neutral), button.md()], [text("Neutral")]),
        button([button.solid(button.Primary), button.md()], [text("Primary")]),
        button([button.solid(button.Secondary), button.md()], [
          text("Secondary"),
        ]),
        button([button.solid(button.Success), button.md()], [text("Success")]),
        button([button.solid(button.Info), button.md()], [text("Info")]),
        button([button.solid(button.Warning), button.md()], [text("Warning")]),
        button([button.solid(button.Danger), button.md()], [text("Danger")]),
      ],
      solid_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.solid(button.Neutral), button.md()], [text(\"Neutral\")]),
    button([button.solid(button.Primary), button.md()], [text(\"Primary\")]),
    button([button.solid(button.Secondary), button.md()], [text(\"Secondary\")]),
    button([button.solid(button.Success), button.md()], [text(\"Success\")]),
    button([button.solid(button.Info), button.md()], [text(\"Info\")]),
    button([button.solid(button.Warning), button.md()], [text(\"Warning\")]),
    button([button.solid(button.Danger), button.md()], [text(\"Danger\")]),
  ])
}
"
  |> string.trim
}
