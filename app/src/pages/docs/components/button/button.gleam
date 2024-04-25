import components/preview.{preview}
import components/ui/button.{button}
import gleam/string
import lustre/element.{type Element}
import lustre/element/html.{div, text}

pub fn docs() -> Element(a) {
  div([], [
    preview(
      [
        button([button.solid(button.Neutral), button.md()], [
          text("Solid Neutral"),
        ]),
        button([button.solid(button.Primary), button.md()], [
          text("Solid Primary"),
        ]),
        button([button.solid(button.Secondary), button.md()], [
          text("Solid Secondary"),
        ]),
        button([button.solid(button.Success), button.md()], [
          text("Solid Success"),
        ]),
        button([button.solid(button.Info), button.md()], [text("Solid Info")]),
        button([button.solid(button.Warning), button.md()], [
          text("Solid Warning"),
        ]),
        button([button.solid(button.Danger), button.md()], [
          text("Solid Danger"),
        ]),
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
    button([button.solid(button.Neutral), button.md()], [text(\"Solid Neutral\")]),
    button([button.solid(button.Primary), button.md()], [text(\"Solid Primary\")]),
    button([button.solid(button.Secondary), button.md()], [text(\"Solid Secondary\")]),
    button([button.solid(button.Success), button.md()], [text(\"Solid Success\")]),
    button([button.solid(button.Info), button.md()], [text(\"Solid Info\")]),
    button([button.solid(button.Warning), button.md()], [text(\"Solid Warning\")]),
    button([button.solid(button.Danger), button.md()], [text(\"Solid Danger\")]),
  ])
}
"
  |> string.trim
}
