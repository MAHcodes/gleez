import components/ui/link.{a}
import lustre/attribute.{href}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Link",
      "",
      [
        a([href("#"), link.link(link.Neutral)], [text("Primary")]),
        a([href("#"), link.link(link.Primary)], [text("Primary")]),
        a([href("#"), link.link(link.Secondary)], [text("Secondary")]),
        a([href("#"), link.link(link.Success)], [text("Success")]),
        a([href("#"), link.link(link.Info)], [text("Info")]),
        a([href("#"), link.link(link.Warning)], [text("Warning")]),
        a([href("#"), link.link(link.Danger)], [text("Danger")]),
      ],
      solid_code(),
    ),
    section.variant(
      "Light",
      "",
      [
        a([href("#"), link.light(link.Neutral), link.md()], [text("Neutral")]),
        a([href("#"), link.light(link.Primary), link.md()], [text("Primary")]),
        a([href("#"), link.light(link.Secondary), link.md()], [
          text("Secondary"),
        ]),
        a([href("#"), link.light(link.Success), link.md()], [text("Success")]),
        a([href("#"), link.light(link.Info), link.md()], [text("Info")]),
        a([href("#"), link.light(link.Warning), link.md()], [text("Warning")]),
        a([href("#"), link.light(link.Danger), link.md()], [text("Danger")]),
      ],
      light_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        a([href("#"), link.flat(link.Neutral), link.md()], [text("Neutral")]),
        a([href("#"), link.flat(link.Primary), link.md()], [text("Primary")]),
        a([href("#"), link.flat(link.Secondary), link.md()], [text("Secondary")]),
        a([href("#"), link.flat(link.Success), link.md()], [text("Success")]),
        a([href("#"), link.flat(link.Info), link.md()], [text("Info")]),
        a([href("#"), link.flat(link.Warning), link.md()], [text("Warning")]),
        a([href("#"), link.flat(link.Danger), link.md()], [text("Danger")]),
      ],
      flat_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/link.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), link.link(link.Neutral)], [text(\"Primary\")]),
    a([href(\"#\"), link.link(link.Primary)], [text(\"Primary\")]),
    a([href(\"#\"), link.link(link.Secondary)], [text(\"Secondary\")]),
    a([href(\"#\"), link.link(link.Success)], [text(\"Success\")]),
    a([href(\"#\"), link.link(link.Info)], [text(\"Info\")]),
    a([href(\"#\"), link.link(link.Warning)], [text(\"Warning\")]),
    a([href(\"#\"), link.link(link.Danger)], [text(\"Danger\")]),
  ])
}
"
}

fn light_code() -> String {
  "
import components/ui/link.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), link.light(link.Neutral), link.md()], [text(\"Neutral\")]),
    a([href(\"#\"), link.light(link.Primary), link.md()], [text(\"Primary\")]),
    a([href(\"#\"), link.light(link.Secondary), link.md()], [text(\"Secondary\")]),
    a([href(\"#\"), link.light(link.Success), link.md()], [text(\"Success\")]),
    a([href(\"#\"), link.light(link.Info), link.md()], [text(\"Info\")]),
    a([href(\"#\"), link.light(link.Warning), link.md()], [text(\"Warning\")]),
    a([href(\"#\"), link.light(link.Danger), link.md()], [text(\"Danger\")]),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/link.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), link.flat(link.Neutral), link.md()], [text(\"Neutral\")]),
    a([href(\"#\"), link.flat(link.Primary), link.md()], [text(\"Primary\")]),
    a([href(\"#\"), link.flat(link.Secondary), link.md()], [text(\"Secondary\")]),
    a([href(\"#\"), link.flat(link.Success), link.md()], [text(\"Success\")]),
    a([href(\"#\"), link.flat(link.Info), link.md()], [text(\"Info\")]),
    a([href(\"#\"), link.flat(link.Warning), link.md()], [text(\"Warning\")]),
    a([href(\"#\"), link.flat(link.Danger), link.md()], [text(\"Danger\")]),
  ])
}
"
}
