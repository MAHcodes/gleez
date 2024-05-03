import components/ui/button.{button}
import lustre/attribute.{class, disabled}
import lustre/element.{type Element, text}
import lustre/ui/icon
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "Icons",
      "",
      [
        button([button.solid(button.Neutral), button.icon()], [
          icon.star_filled([class("w-5")]),
        ]),
        button([button.outlined(button.Neutral), button.icon()], [
          icon.star_filled([class("w-5")]),
        ]),
        button([button.light(button.Neutral), button.icon()], [
          icon.star_filled([class("w-5")]),
        ]),
        button([button.flat(button.Neutral), button.icon()], [
          icon.star_filled([class("w-5")]),
        ]),
        button([button.link(button.Neutral), button.icon()], [
          icon.star_filled([class("w-5")]),
        ]),
        button([button.ghost(button.Neutral), button.icon()], [
          icon.star_filled([class("w-5")]),
        ]),
      ],
      icons_code(),
    ),
    section.example(
      "Disabled",
      "",
      [
        button([button.solid(button.Neutral), button.md(), disabled(True)], [
          text("Disabled"),
        ]),
      ],
      disabled_code(),
    ),
    section.example(
      "With Icons",
      "",
      [
        button([button.solid(button.Neutral), button.md()], [
          icon.star_filled([class("w-5")]),
          text("Icon Start"),
        ]),
        button([button.solid(button.Neutral), button.md()], [
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
          [button.solid(button.Neutral), button.md(), attribute.disabled(True)],
          [icon.update([class("w-5 animate-spin")]), text("Loading...")],
        ),
      ],
      loading_code(),
    ),
  ])
}

fn icons_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.solid(button.Neutral), button.icon()], [
      icon.star_filled([class(\"w-5\")]),
    ]),
    button([button.outlined(button.Neutral), button.icon()], [
      icon.star_filled([class(\"w-5\")]),
    ]),
    button([button.light(button.Neutral), button.icon()], [
      icon.star_filled([class(\"w-5\")]),
    ]),
    button([button.flat(button.Neutral), button.icon()], [
      icon.star_filled([class(\"w-5\")]),
    ]),
    button([button.link(button.Neutral), button.icon()], [
      icon.star_filled([class(\"w-5\")]),
    ]),
    button([button.ghost(button.Neutral), button.icon()], [
      icon.star_filled([class(\"w-5\")]),
    ]),
  ])
}
"
}

fn disabled_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class, disabled}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.solid(button.Neutral), button.md(), disabled(True)], [
      text(\"Disabled\"),
    ]),
  ])
}
"
}

fn with_icons_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.solid(button.Neutral), button.md()], [
      icon.star_filled([class(\"w-5\")]),
      text(\"Icon Start\"),
    ]),
    button([button.solid(button.Neutral), button.md()], [
      text(\"Icon End\"),
      icon.star_filled([class(\"w-5\")]),
    ]),
  ])
}
"
}

fn loading_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class, disabled}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button(
      [button.solid(button.Neutral), button.md(), attribute.disabled(True)],
      [
        icon.update([class(\"w-5 animate-spin\")]),
        text(\"Loading...\"),
      ],
    ),
  ])
}
"
}
