import components/ui/a.{a}
import gleam/string
import lustre/attribute.{href}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn attributes() -> Element(a) {
  section.attributes([
    section.attribute(
      "Size",
      "",
      [
        a([href("#"), a.link(a.Neutral), a.sm()], [text("Small")]),
        a([href("#"), a.link(a.Neutral), a.md()], [text("Medium")]),
        a([href("#"), a.link(a.Neutral), a.lg()], [text("Large")]),
      ],
      size_code(),
    ),
    section.attribute(
      "Underline",
      "",
      [
        a([href("#"), a.link(a.Neutral)], [text("None")]),
        a([href("#"), a.link(a.Neutral), a.underline(a.Hover)], [text("Hover")]),
        a([href("#"), a.link(a.Neutral), a.underline(a.Active)], [
          text("Active"),
        ]),
        a([href("#"), a.link(a.Neutral), a.underline(a.Focus)], [text("Focus")]),
        a([href("#"), a.link(a.Neutral), a.underline(a.Always)], [
          text("Always"),
        ]),
      ],
      underline_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.link(a.Neutral), a.sm()], [text(\"Small\")]),
    a([href(\"#\"), a.link(a.Neutral), a.md()], [text(\"Medium\")]),
    a([href(\"#\"), a.link(a.Neutral), a.lg()], [text(\"Large\")]),
  ])
}
"
  |> string.trim
}

fn underline_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.link(a.Neutral)], [text(\"None\")]),
    a([href(\"#\"), a.link(a.Neutral), a.underline(a.Hover)], [text(\"Hover\")]),
    a([href(\"#\"), a.link(a.Neutral), a.underline(a.Active)], [text(\"Active\")]),
    a([href(\"#\"), a.link(a.Neutral), a.underline(a.Focus)], [text(\"Focus\")]),
    a([href(\"#\"), a.link(a.Neutral), a.underline(a.Always)], [text(\"Always\")]),
  ])
}
"
  |> string.trim
}
