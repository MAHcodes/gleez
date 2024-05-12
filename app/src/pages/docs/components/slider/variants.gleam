import components/ui/slider.{slider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        div([class("flex flex-col gap-4 w-full max-w-xs")], [
          slider([slider.solid(slider.Neutral), slider.md()]),
          slider([slider.solid(slider.Primary), slider.md()]),
          slider([slider.solid(slider.Secondary), slider.md()]),
          slider([slider.solid(slider.Success), slider.md()]),
          slider([slider.solid(slider.Info), slider.md()]),
          slider([slider.solid(slider.Warning), slider.md()]),
          slider([slider.solid(slider.Danger), slider.md()]),
        ]),
      ],
      solid_code(),
    ),
    section.variant(
      "Outlined",
      "",
      [
        div([class("flex flex-col gap-4 w-full max-w-xs")], [
          slider([slider.outlined(slider.Neutral), slider.md()]),
          slider([slider.outlined(slider.Primary), slider.md()]),
          slider([slider.outlined(slider.Secondary), slider.md()]),
          slider([slider.outlined(slider.Success), slider.md()]),
          slider([slider.outlined(slider.Info), slider.md()]),
          slider([slider.outlined(slider.Warning), slider.md()]),
          slider([slider.outlined(slider.Danger), slider.md()]),
        ]),
      ],
      outlined_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        div([class("flex flex-col gap-4 w-full max-w-xs")], [
          slider([slider.flat(slider.Neutral), slider.md()]),
          slider([slider.flat(slider.Primary), slider.md()]),
          slider([slider.flat(slider.Secondary), slider.md()]),
          slider([slider.flat(slider.Success), slider.md()]),
          slider([slider.flat(slider.Info), slider.md()]),
          slider([slider.flat(slider.Warning), slider.md()]),
          slider([slider.flat(slider.Danger), slider.md()]),
        ]),
      ],
      flat_code(),
    ),
    section.variant(
      "Ghost",
      "",
      [
        div([class("flex flex-col gap-4 w-full max-w-xs")], [
          slider([slider.ghost(slider.Neutral), slider.md()]),
          slider([slider.ghost(slider.Primary), slider.md()]),
          slider([slider.ghost(slider.Secondary), slider.md()]),
          slider([slider.ghost(slider.Success), slider.md()]),
          slider([slider.ghost(slider.Info), slider.md()]),
          slider([slider.ghost(slider.Warning), slider.md()]),
          slider([slider.ghost(slider.Danger), slider.md()]),
        ]),
      ],
      ghost_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/slider.{slider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col gap-4 w-full max-w-xs\")], [
    slider([slider.solid(slider.Neutral), slider.md()]),
    slider([slider.solid(slider.Primary), slider.md()]),
    slider([slider.solid(slider.Secondary), slider.md()]),
    slider([slider.solid(slider.Success), slider.md()]),
    slider([slider.solid(slider.Info), slider.md()]),
    slider([slider.solid(slider.Warning), slider.md()]),
    slider([slider.solid(slider.Danger), slider.md()]),
  ])
}
"
}

fn outlined_code() -> String {
  "
import components/ui/slider.{slider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col gap-4 w-full max-w-xs\")], [
    slider([slider.outlined(slider.Neutral), slider.md()]),
    slider([slider.outlined(slider.Primary), slider.md()]),
    slider([slider.outlined(slider.Secondary), slider.md()]),
    slider([slider.outlined(slider.Success), slider.md()]),
    slider([slider.outlined(slider.Info), slider.md()]),
    slider([slider.outlined(slider.Warning), slider.md()]),
    slider([slider.outlined(slider.Danger), slider.md()]),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/slider.{slider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col gap-4 w-full max-w-xs\")], [
    slider([slider.flat(slider.Neutral), slider.md()]),
    slider([slider.flat(slider.Primary), slider.md()]),
    slider([slider.flat(slider.Secondary), slider.md()]),
    slider([slider.flat(slider.Success), slider.md()]),
    slider([slider.flat(slider.Info), slider.md()]),
    slider([slider.flat(slider.Warning), slider.md()]),
    slider([slider.flat(slider.Danger), slider.md()]),
  ])
}
"
}

fn ghost_code() -> String {
  "
import components/ui/slider.{slider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col gap-4 w-full max-w-xs\")], [
    slider([slider.ghost(slider.Neutral), slider.md()]),
    slider([slider.ghost(slider.Primary), slider.md()]),
    slider([slider.ghost(slider.Secondary), slider.md()]),
    slider([slider.ghost(slider.Success), slider.md()]),
    slider([slider.ghost(slider.Info), slider.md()]),
    slider([slider.ghost(slider.Warning), slider.md()]),
    slider([slider.ghost(slider.Danger), slider.md()]),
  ])
}
"
}
