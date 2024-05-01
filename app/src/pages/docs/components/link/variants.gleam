import components/ui/a.{a}
import gleam/string
import lustre/attribute.{href}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Link",
      "",
      [
        a([href("#"), a.link(a.Neutral)], [text("Primary")]),
        a([href("#"), a.link(a.Primary)], [text("Primary")]),
        a([href("#"), a.link(a.Secondary)], [text("Secondary")]),
        a([href("#"), a.link(a.Success)], [text("Success")]),
        a([href("#"), a.link(a.Info)], [text("Info")]),
        a([href("#"), a.link(a.Warning)], [text("Warning")]),
        a([href("#"), a.link(a.Danger)], [text("Danger")]),
      ],
      solid_code(),
    ),
    section.variant(
      "Light",
      "",
      [
        a([href("#"), a.light(a.Neutral), a.md()], [text("Neutral")]),
        a([href("#"), a.light(a.Primary), a.md()], [text("Primary")]),
        a([href("#"), a.light(a.Secondary), a.md()], [text("Secondary")]),
        a([href("#"), a.light(a.Success), a.md()], [text("Success")]),
        a([href("#"), a.light(a.Info), a.md()], [text("Info")]),
        a([href("#"), a.light(a.Warning), a.md()], [text("Warning")]),
        a([href("#"), a.light(a.Danger), a.md()], [text("Danger")]),
      ],
      light_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        a([href("#"), a.flat(a.Neutral), a.md()], [text("Neutral")]),
        a([href("#"), a.flat(a.Primary), a.md()], [text("Primary")]),
        a([href("#"), a.flat(a.Secondary), a.md()], [text("Secondary")]),
        a([href("#"), a.flat(a.Success), a.md()], [text("Success")]),
        a([href("#"), a.flat(a.Info), a.md()], [text("Info")]),
        a([href("#"), a.flat(a.Warning), a.md()], [text("Warning")]),
        a([href("#"), a.flat(a.Danger), a.md()], [text("Danger")]),
      ],
      flat_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.link(a.Neutral)], [text(\"Primary\")]),
    a([href(\"#\"), a.link(a.Primary)], [text(\"Primary\")]),
    a([href(\"#\"), a.link(a.Secondary)], [text(\"Secondary\")]),
    a([href(\"#\"), a.link(a.Success)], [text(\"Success\")]),
    a([href(\"#\"), a.link(a.Info)], [text(\"Info\")]),
    a([href(\"#\"), a.link(a.Warning)], [text(\"Warning\")]),
    a([href(\"#\"), a.link(a.Danger)], [text(\"Danger\")]),
  ])
}
"
  |> string.trim
}

fn light_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.light(a.Neutral), a.md()], [text(\"Neutral\")]),
    a([href(\"#\"), a.light(a.Primary), a.md()], [text(\"Primary\")]),
    a([href(\"#\"), a.light(a.Secondary), a.md()], [text(\"Secondary\")]),
    a([href(\"#\"), a.light(a.Success), a.md()], [text(\"Success\")]),
    a([href(\"#\"), a.light(a.Info), a.md()], [text(\"Info\")]),
    a([href(\"#\"), a.light(a.Warning), a.md()], [text(\"Warning\")]),
    a([href(\"#\"), a.light(a.Danger), a.md()], [text(\"Danger\")]),
  ])
}
"
  |> string.trim
}

fn flat_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.flat(a.Neutral), a.md()], [text(\"Neutral\")]),
    a([href(\"#\"), a.flat(a.Primary), a.md()], [text(\"Primary\")]),
    a([href(\"#\"), a.flat(a.Secondary), a.md()], [text(\"Secondary\")]),
    a([href(\"#\"), a.flat(a.Success), a.md()], [text(\"Success\")]),
    a([href(\"#\"), a.flat(a.Info), a.md()], [text(\"Info\")]),
    a([href(\"#\"), a.flat(a.Warning), a.md()], [text(\"Warning\")]),
    a([href(\"#\"), a.flat(a.Danger), a.md()], [text(\"Danger\")]),
  ])
}
"
  |> string.trim
}
