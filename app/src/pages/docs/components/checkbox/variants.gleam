import components/ui/checkbox.{checkbox}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        checkbox([checkbox.solid(checkbox.Neutral), checkbox.md()], [
          text("Neutral"),
        ]),
        checkbox([checkbox.solid(checkbox.Primary), checkbox.md()], [
          text("Primary"),
        ]),
        checkbox([checkbox.solid(checkbox.Secondary), checkbox.md()], [
          text("Secondary"),
        ]),
        checkbox([checkbox.solid(checkbox.Success), checkbox.md()], [
          text("Success"),
        ]),
        checkbox([checkbox.solid(checkbox.Info), checkbox.md()], [text("Info")]),
        checkbox([checkbox.solid(checkbox.Warning), checkbox.md()], [
          text("Warning"),
        ]),
        checkbox([checkbox.solid(checkbox.Danger), checkbox.md()], [
          text("Danger"),
        ]),
      ],
      solid_code(),
    ),
    section.variant(
      "Outlined",
      "",
      [
        checkbox([checkbox.outlined(checkbox.Neutral), checkbox.md()], [
          text("Neutral"),
        ]),
        checkbox([checkbox.outlined(checkbox.Primary), checkbox.md()], [
          text("Primary"),
        ]),
        checkbox([checkbox.outlined(checkbox.Secondary), checkbox.md()], [
          text("Secondary"),
        ]),
        checkbox([checkbox.outlined(checkbox.Success), checkbox.md()], [
          text("Success"),
        ]),
        checkbox([checkbox.outlined(checkbox.Info), checkbox.md()], [
          text("Info"),
        ]),
        checkbox([checkbox.outlined(checkbox.Warning), checkbox.md()], [
          text("Warning"),
        ]),
        checkbox([checkbox.outlined(checkbox.Danger), checkbox.md()], [
          text("Danger"),
        ]),
      ],
      outlined_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        checkbox([checkbox.flat(checkbox.Neutral), checkbox.md()], [
          text("Neutral"),
        ]),
        checkbox([checkbox.flat(checkbox.Primary), checkbox.md()], [
          text("Primary"),
        ]),
        checkbox([checkbox.flat(checkbox.Secondary), checkbox.md()], [
          text("Secondary"),
        ]),
        checkbox([checkbox.flat(checkbox.Success), checkbox.md()], [
          text("Success"),
        ]),
        checkbox([checkbox.flat(checkbox.Info), checkbox.md()], [text("Info")]),
        checkbox([checkbox.flat(checkbox.Warning), checkbox.md()], [
          text("Warning"),
        ]),
        checkbox([checkbox.flat(checkbox.Danger), checkbox.md()], [
          text("Danger"),
        ]),
      ],
      flat_code(),
    ),
    section.variant(
      "Ghost",
      "",
      [
        checkbox([checkbox.ghost(checkbox.Neutral), checkbox.md()], [
          text("Neutral"),
        ]),
        checkbox([checkbox.ghost(checkbox.Primary), checkbox.md()], [
          text("Primary"),
        ]),
        checkbox([checkbox.ghost(checkbox.Secondary), checkbox.md()], [
          text("Secondary"),
        ]),
        checkbox([checkbox.ghost(checkbox.Success), checkbox.md()], [
          text("Success"),
        ]),
        checkbox([checkbox.ghost(checkbox.Info), checkbox.md()], [text("Info")]),
        checkbox([checkbox.ghost(checkbox.Warning), checkbox.md()], [
          text("Warning"),
        ]),
        checkbox([checkbox.ghost(checkbox.Danger), checkbox.md()], [
          text("Danger"),
        ]),
      ],
      ghost_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/checkbox.{checkbox}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    checkbox([checkbox.solid(checkbox.Neutral), checkbox.md()], [text(\"Neutral\")]),
    checkbox([checkbox.solid(checkbox.Primary), checkbox.md()], [text(\"Primary\")]),
    checkbox([checkbox.solid(checkbox.Secondary), checkbox.md()], [text(\"Secondary\")]),
    checkbox([checkbox.solid(checkbox.Success), checkbox.md()], [text(\"Success\")]),
    checkbox([checkbox.solid(checkbox.Info), checkbox.md()], [text(\"Info\")]),
    checkbox([checkbox.solid(checkbox.Warning), checkbox.md()], [text(\"Warning\")]),
    checkbox([checkbox.solid(checkbox.Danger), checkbox.md()], [text(\"Danger\")]),
  ])
}
"
}

fn outlined_code() -> String {
  "
import components/ui/checkbox.{checkbox}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    checkbox([checkbox.outlined(checkbox.Neutral), checkbox.md()], [text(\"Neutral\")]),
    checkbox([checkbox.outlined(checkbox.Primary), checkbox.md()], [text(\"Primary\")]),
    checkbox([checkbox.outlined(checkbox.Secondary), checkbox.md()], [text(\"Secondary\")]),
    checkbox([checkbox.outlined(checkbox.Success), checkbox.md()], [text(\"Success\")]),
    checkbox([checkbox.outlined(checkbox.Info), checkbox.md()], [text(\"Info\")]),
    checkbox([checkbox.outlined(checkbox.Warning), checkbox.md()], [text(\"Warning\")]),
    checkbox([checkbox.outlined(checkbox.Danger), checkbox.md()], [text(\"Danger\")]),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/checkbox.{checkbox}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    checkbox([checkbox.flat(checkbox.Neutral), checkbox.md()], [text(\"Neutral\")]),
    checkbox([checkbox.flat(checkbox.Primary), checkbox.md()], [text(\"Primary\")]),
    checkbox([checkbox.flat(checkbox.Secondary), checkbox.md()], [text(\"Secondary\")]),
    checkbox([checkbox.flat(checkbox.Success), checkbox.md()], [text(\"Success\")]),
    checkbox([checkbox.flat(checkbox.Info), checkbox.md()], [text(\"Info\")]),
    checkbox([checkbox.flat(checkbox.Warning), checkbox.md()], [text(\"Warning\")]),
    checkbox([checkbox.flat(checkbox.Danger), checkbox.md()], [text(\"Danger\")]),
  ])
}
"
}

fn ghost_code() -> String {
  "
import components/ui/checkbox.{checkbox}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    checkbox([checkbox.ghost(checkbox.Neutral), checkbox.md()], [text(\"Neutral\")]),
    checkbox([checkbox.ghost(checkbox.Primary), checkbox.md()], [text(\"Primary\")]),
    checkbox([checkbox.ghost(checkbox.Secondary), checkbox.md()], [text(\"Secondary\")]),
    checkbox([checkbox.ghost(checkbox.Success), checkbox.md()], [text(\"Success\")]),
    checkbox([checkbox.ghost(checkbox.Info), checkbox.md()], [text(\"Info\")]),
    checkbox([checkbox.ghost(checkbox.Warning), checkbox.md()], [text(\"Warning\")]),
    checkbox([checkbox.ghost(checkbox.Danger), checkbox.md()], [text(\"Danger\")]),
  ])
}
"
}
