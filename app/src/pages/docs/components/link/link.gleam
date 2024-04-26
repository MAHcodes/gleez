import components/preview.{preview}
import components/ui/a.{a}
import gleam/string
import lustre/attribute.{href}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import pages/docs/components/link/intro

pub fn docs() -> Element(a) {
  div([], [
    intro.docs(),
    preview(
      [
        a([href("#"), a.link(a.Neutral)], [text("Link Primary")]),
        a([href("#"), a.link(a.Primary)], [text("Link Primary")]),
        a([href("#"), a.link(a.Secondary)], [text("Link Secondary")]),
        a([href("#"), a.link(a.Success)], [text("Link Success")]),
        a([href("#"), a.link(a.Info)], [text("Link Info")]),
        a([href("#"), a.link(a.Warning)], [text("Link Warning")]),
        a([href("#"), a.link(a.Danger)], [text("Link Danger")]),
      ],
      solid_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.link(a.Neutral)], [text(\"Link Primary\")]),
    a([href(\"#\"), a.link(a.Primary)], [text(\"Link Primary\")]),
    a([href(\"#\"), a.link(a.Secondary)], [text(\"Link Secondary\")]),
    a([href(\"#\"), a.link(a.Success)], [text(\"Link Success\")]),
    a([href(\"#\"), a.link(a.Info)], [text(\"Link Info\")]),
    a([href(\"#\"), a.link(a.Warning)], [text(\"Link Warning\")]),
    a([href(\"#\"), a.link(a.Danger)], [text(\"Link Danger\")]),
  ])
}
"
  |> string.trim
}
