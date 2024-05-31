import components/ui/radio.{radio}
import lustre/attribute.{name}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        radio([radio.solid(radio.Neutral), radio.md(), name("demo")], [
          text("Neutral"),
        ]),
        radio([radio.solid(radio.Primary), radio.md(), name("demo")], [
          text("Primary"),
        ]),
        radio([radio.solid(radio.Secondary), radio.md(), name("demo")], [
          text("Secondary"),
        ]),
        radio([radio.solid(radio.Success), radio.md(), name("demo")], [
          text("Success"),
        ]),
        radio([radio.solid(radio.Info), radio.md(), name("demo")], [
          text("Info"),
        ]),
        radio([radio.solid(radio.Warning), radio.md(), name("demo")], [
          text("Warning"),
        ]),
        radio([radio.solid(radio.Danger), radio.md(), name("demo")], [
          text("Danger"),
        ]),
      ],
      solid_code(),
    ),
    section.variant(
      "Outlined",
      "",
      [
        radio([radio.outlined(radio.Neutral), radio.md(), name("demo")], [
          text("Neutral"),
        ]),
        radio([radio.outlined(radio.Primary), radio.md(), name("demo")], [
          text("Primary"),
        ]),
        radio([radio.outlined(radio.Secondary), radio.md(), name("demo")], [
          text("Secondary"),
        ]),
        radio([radio.outlined(radio.Success), radio.md(), name("demo")], [
          text("Success"),
        ]),
        radio([radio.outlined(radio.Info), radio.md(), name("demo")], [
          text("Info"),
        ]),
        radio([radio.outlined(radio.Warning), radio.md(), name("demo")], [
          text("Warning"),
        ]),
        radio([radio.outlined(radio.Danger), radio.md(), name("demo")], [
          text("Danger"),
        ]),
      ],
      outlined_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        radio([radio.flat(radio.Neutral), radio.md(), name("demo")], [
          text("Neutral"),
        ]),
        radio([radio.flat(radio.Primary), radio.md(), name("demo")], [
          text("Primary"),
        ]),
        radio([radio.flat(radio.Secondary), radio.md(), name("demo")], [
          text("Secondary"),
        ]),
        radio([radio.flat(radio.Success), radio.md(), name("demo")], [
          text("Success"),
        ]),
        radio([radio.flat(radio.Info), radio.md(), name("demo")], [text("Info")]),
        radio([radio.flat(radio.Warning), radio.md(), name("demo")], [
          text("Warning"),
        ]),
        radio([radio.flat(radio.Danger), radio.md(), name("demo")], [
          text("Danger"),
        ]),
      ],
      flat_code(),
    ),
    section.variant(
      "Ghost",
      "",
      [
        radio([radio.ghost(radio.Neutral), radio.md(), name("demo")], [
          text("Neutral"),
        ]),
        radio([radio.ghost(radio.Primary), radio.md(), name("demo")], [
          text("Primary"),
        ]),
        radio([radio.ghost(radio.Secondary), radio.md(), name("demo")], [
          text("Secondary"),
        ]),
        radio([radio.ghost(radio.Success), radio.md(), name("demo")], [
          text("Success"),
        ]),
        radio([radio.ghost(radio.Info), radio.md(), name("demo")], [text("Info")]),
        radio([radio.ghost(radio.Warning), radio.md(), name("demo")], [
          text("Warning"),
        ]),
        radio([radio.ghost(radio.Danger), radio.md(), name("demo")], [
          text("Danger"),
        ]),
      ],
      ghost_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/radio.{radio}
import lustre/attribute.{class, name}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    radio([radio.solid(radio.Neutral), radio.md(), name(\"demo\")], [text(\"Neutral\")]),
    radio([radio.solid(radio.Primary), radio.md(), name(\"demo\")], [text(\"Primary\")]),
    radio([radio.solid(radio.Secondary), radio.md(), name(\"demo\")], [text(\"Secondary\")]),
    radio([radio.solid(radio.Success), radio.md(), name(\"demo\")], [text(\"Success\")]),
    radio([radio.solid(radio.Info), radio.md(), name(\"demo\")], [text(\"Info\")]),
    radio([radio.solid(radio.Warning), radio.md(), name(\"demo\")], [text(\"Warning\")]),
    radio([radio.solid(radio.Danger), radio.md(), name(\"demo\")], [text(\"Danger\")]),
  ])
}
"
}

fn outlined_code() -> String {
  "
import components/ui/radio.{radio}
import lustre/attribute.{class, name}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    radio([radio.outlined(radio.Neutral), radio.md(), name(\"demo\")], [text(\"Neutral\")]),
    radio([radio.outlined(radio.Primary), radio.md(), name(\"demo\")], [text(\"Primary\")]),
    radio([radio.outlined(radio.Secondary), radio.md(), name(\"demo\")], [text(\"Secondary\")]),
    radio([radio.outlined(radio.Success), radio.md(), name(\"demo\")], [text(\"Success\")]),
    radio([radio.outlined(radio.Info), radio.md(), name(\"demo\")], [text(\"Info\")]),
    radio([radio.outlined(radio.Warning), radio.md(), name(\"demo\")], [text(\"Warning\")]),
    radio([radio.outlined(radio.Danger), radio.md(), name(\"demo\")], [text(\"Danger\")]),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/radio.{radio}
import lustre/attribute.{class, name}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    radio([radio.flat(radio.Neutral), radio.md(), name(\"demo\")], [text(\"Neutral\")]),
    radio([radio.flat(radio.Primary), radio.md(), name(\"demo\")], [text(\"Primary\")]),
    radio([radio.flat(radio.Secondary), radio.md(), name(\"demo\")], [text(\"Secondary\")]),
    radio([radio.flat(radio.Success), radio.md(), name(\"demo\")], [text(\"Success\")]),
    radio([radio.flat(radio.Info), radio.md(), name(\"demo\")], [text(\"Info\")]),
    radio([radio.flat(radio.Warning), radio.md(), name(\"demo\")], [text(\"Warning\")]),
    radio([radio.flat(radio.Danger), radio.md(), name(\"demo\")], [text(\"Danger\")]),
  ])
}
"
}

fn ghost_code() -> String {
  "
import components/ui/radio.{radio}
import lustre/attribute.{class, name}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    radio([radio.ghost(radio.Neutral), radio.md(), name(\"demo\")], [text(\"Neutral\")]),
    radio([radio.ghost(radio.Primary), radio.md(), name(\"demo\")], [text(\"Primary\")]),
    radio([radio.ghost(radio.Secondary), radio.md(), name(\"demo\")], [text(\"Secondary\")]),
    radio([radio.ghost(radio.Success), radio.md(), name(\"demo\")], [text(\"Success\")]),
    radio([radio.ghost(radio.Info), radio.md(), name(\"demo\")], [text(\"Info\")]),
    radio([radio.ghost(radio.Warning), radio.md(), name(\"demo\")], [text(\"Warning\")]),
    radio([radio.ghost(radio.Danger), radio.md(), name(\"demo\")], [text(\"Danger\")]),
  ])
}
"
}
