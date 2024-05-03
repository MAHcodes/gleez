import components/ui/button.{button}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
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
    section.variant(
      "Outlined",
      "",
      [
        button([button.outlined(button.Neutral), button.md()], [text("Neutral")]),
        button([button.outlined(button.Primary), button.md()], [text("Primary")]),
        button([button.outlined(button.Secondary), button.md()], [
          text("Secondary"),
        ]),
        button([button.outlined(button.Success), button.md()], [text("Success")]),
        button([button.outlined(button.Info), button.md()], [text("Info")]),
        button([button.outlined(button.Warning), button.md()], [text("Warning")]),
        button([button.outlined(button.Danger), button.md()], [text("Danger")]),
      ],
      outlined_code(),
    ),
    section.variant(
      "Link",
      "",
      [
        button([button.link(button.Neutral), button.md()], [text("Neutral")]),
        button([button.link(button.Primary), button.md()], [text("Primary")]),
        button([button.link(button.Secondary), button.md()], [text("Secondary")]),
        button([button.link(button.Success), button.md()], [text("Success")]),
        button([button.link(button.Info), button.md()], [text("Info")]),
        button([button.link(button.Warning), button.md()], [text("Warning")]),
        button([button.link(button.Danger), button.md()], [text("Danger")]),
      ],
      link_code(),
    ),
    section.variant(
      "Light",
      "",
      [
        button([button.light(button.Neutral), button.md()], [text("Neutral")]),
        button([button.light(button.Primary), button.md()], [text("Primary")]),
        button([button.light(button.Secondary), button.md()], [
          text("Secondary"),
        ]),
        button([button.light(button.Success), button.md()], [text("Success")]),
        button([button.light(button.Info), button.md()], [text("Info")]),
        button([button.light(button.Warning), button.md()], [text("Warning")]),
        button([button.light(button.Danger), button.md()], [text("Danger")]),
      ],
      light_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        button([button.flat(button.Neutral), button.md()], [text("Neutral")]),
        button([button.flat(button.Primary), button.md()], [text("Primary")]),
        button([button.flat(button.Secondary), button.md()], [text("Secondary")]),
        button([button.flat(button.Success), button.md()], [text("Success")]),
        button([button.flat(button.Info), button.md()], [text("Info")]),
        button([button.flat(button.Warning), button.md()], [text("Warning")]),
        button([button.flat(button.Danger), button.md()], [text("Danger")]),
      ],
      flat_code(),
    ),
    section.variant(
      "Ghost",
      "",
      [
        button([button.ghost(button.Neutral), button.md()], [text("Neutral")]),
        button([button.ghost(button.Primary), button.md()], [text("Primary")]),
        button([button.ghost(button.Secondary), button.md()], [
          text("Secondary"),
        ]),
        button([button.ghost(button.Success), button.md()], [text("Success")]),
        button([button.ghost(button.Info), button.md()], [text("Info")]),
        button([button.ghost(button.Warning), button.md()], [text("Warning")]),
        button([button.ghost(button.Danger), button.md()], [text("Danger")]),
      ],
      ghost_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
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
}

fn outlined_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.outlined(button.Neutral), button.md()], [text(\"Neutral\")]),
    button([button.outlined(button.Primary), button.md()], [text(\"Primary\")]),
    button([button.outlined(button.Secondary), button.md()], [text(\"Secondary\")]),
    button([button.outlined(button.Success), button.md()], [text(\"Success\")]),
    button([button.outlined(button.Info), button.md()], [text(\"Info\")]),
    button([button.outlined(button.Warning), button.md()], [text(\"Warning\")]),
    button([button.outlined(button.Danger), button.md()], [text(\"Danger\")]),
  ])
}
"
}

fn link_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.link(button.Neutral), button.md()], [text(\"Neutral\")]),
    button([button.link(button.Primary), button.md()], [text(\"Primary\")]),
    button([button.link(button.Secondary), button.md()], [text(\"Secondary\")]),
    button([button.link(button.Success), button.md()], [text(\"Success\")]),
    button([button.link(button.Info), button.md()], [text(\"Info\")]),
    button([button.link(button.Warning), button.md()], [text(\"Warning\")]),
    button([button.link(button.Danger), button.md()], [text(\"Danger\")]),
  ])
}
"
}

fn light_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.light(button.Neutral), button.md()], [text(\"Neutral\")]),
    button([button.light(button.Primary), button.md()], [text(\"Primary\")]),
    button([button.light(button.Secondary), button.md()], [text(\"Secondary\")]),
    button([button.light(button.Success), button.md()], [text(\"Success\")]),
    button([button.light(button.Info), button.md()], [text(\"Info\")]),
    button([button.light(button.Warning), button.md()], [text(\"Warning\")]),
    button([button.light(button.Danger), button.md()], [text(\"Danger\")]),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.flat(button.Neutral), button.md()], [text(\"Neutral\")]),
    button([button.flat(button.Primary), button.md()], [text(\"Primary\")]),
    button([button.flat(button.Secondary), button.md()], [text(\"Secondary\")]),
    button([button.flat(button.Success), button.md()], [text(\"Success\")]),
    button([button.flat(button.Info), button.md()], [text(\"Info\")]),
    button([button.flat(button.Warning), button.md()], [text(\"Warning\")]),
    button([button.flat(button.Danger), button.md()], [text(\"Danger\")]),
  ])
}
"
}

fn ghost_code() -> String {
  "
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    button([button.ghost(button.Neutral), button.md()], [text(\"Neutral\")]),
    button([button.ghost(button.Primary), button.md()], [text(\"Primary\")]),
    button([button.ghost(button.Secondary), button.md()], [text(\"Secondary\")]),
    button([button.ghost(button.Success), button.md()], [text(\"Success\")]),
    button([button.ghost(button.Info), button.md()], [text(\"Info\")]),
    button([button.ghost(button.Warning), button.md()], [text(\"Warning\")]),
    button([button.ghost(button.Danger), button.md()], [text(\"Danger\")]),
  ])
}
"
}
