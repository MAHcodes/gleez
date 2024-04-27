import components/ui/button.{button}
import gleam/string
import lustre/attribute.{class, disabled}
import lustre/element.{type Element, text}
import lustre/ui/icon
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "Disabled",
      "",
      [
        button([button.solid(button.Neutral), button.md(), disabled(True)], [
          text("Disabled"),
        ]),
        button([button.outline(button.Primary), button.md(), disabled(True)], [
          text("Disabled"),
        ]),
        button([button.light(button.Secondary), button.md(), disabled(True)], [
          text("Disabled"),
        ]),
        button([button.flat(button.Success), button.md(), disabled(True)], [
          text("Disabled"),
        ]),
        button([button.ghost(button.Info), button.md(), disabled(True)], [
          text("Disabled"),
        ]),
        button([button.link(button.Warning), button.md(), disabled(True)], [
          text("Disabled"),
        ]),
        button([button.solid(button.Danger), button.md(), disabled(True)], [
          text("Disabled"),
        ]),
      ],
      disabled_code(),
    ),
    section.example(
      "With Icons",
      "",
      [
        button([button.solid(button.Primary), button.md()], [
          icon.star_filled([class("w-5")]),
          text("Icon Start"),
        ]),
        button([button.solid(button.Primary), button.md()], [
          text("Icon End"),
          icon.star_filled([class("w-5")]),
        ]),
      ],
      with_icons_code(),
    ),
    section.example(
      "Loading",
      "",
      [
        button(
          [button.solid(button.Primary), button.md(), attribute.disabled(True)],
          [
            icon.update([class("w-5 animate-spin")]),
            text("Loading..."),
          ],
        ),
      ],
      loading_code(),
    ),
  ])
}

fn disabled_code() -> String {
  "
import components/ui/button.{button}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, disabled}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.solid(button.Neutral), button.md(), disabled(True)], [
      text(\"Disabled\"),
    ]),
    button([button.outline(button.Primary), button.md(), disabled(True)], [
      text(\"Disabled\"),
    ]),
    button([button.light(button.Secondary), button.md(), disabled(True)], [
      text(\"Disabled\"),
    ]),
    button([button.flat(button.Success), button.md(), disabled(True)], [
      text(\"Disabled\"),
    ]),
    button([button.ghost(button.Info), button.md(), disabled(True)], [
      text(\"Disabled\"),
    ]),
    button([button.link(button.Warning), button.md(), disabled(True)], [
      text(\"Disabled\"),
    ]),
    button([button.solid(button.Danger), button.md(), disabled(True)], [
      text(\"Disabled\"),
    ]),
  ])
}
"
  |> string.trim
}

fn with_icons_code() -> String {
  "
import components/ui/button.{button}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class}
import lustre/ui/icon

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.solid(button.Primary), button.md()], [
      icon.star_filled([class(\"w-5\")]),
      text(\"Icon Start\"),
    ]),
    button([button.solid(button.Primary), button.md()], [
      text(\"Icon End\"),
      icon.star_filled([class(\"w-5\")]),
    ]),
  ])
}
"
  |> string.trim
}

fn loading_code() -> String {
  "
import components/ui/button.{button}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, disabled}
import lustre/ui/icon

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button(
      [button.solid(button.Primary), button.md(), attribute.disabled(True)],
      [
        icon.update([class(\"w-5 animate-spin\")]),
        text(\"Loading...\"),
      ],
    ),
  ])
}
"
  |> string.trim
}
