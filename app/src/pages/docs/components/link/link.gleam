import components/code.{code}
import components/preview.{preview}
import components/ui/a.{a}
import gleam/string
import lustre/attribute.{class, href}
import lustre/element.{type Element}
import lustre/element/html.{div, h1, h2, p, text}

pub fn docs() -> Element(a) {
  div([], [
    div([class("prose max-w-none")], [
      h1([], [text("Link")]),
      p([], [
        text(
          "Links allow users to click their way from page to page. This component is styled to resemble a hyperlink and semantically renders an src",
        ),
      ]),
      h2([], [text("Installation")]),
      code("gleam run -m gleez add link", "shell"),
      h2([], [text("Variants")]),
      p([], [
        text(
          "Links allow users to click their way from page to page. This component is styled to resemble a hyperlink and semantically renders an src",
        ),
      ]),
    ]),
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
