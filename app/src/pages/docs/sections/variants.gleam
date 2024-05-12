import components/markdown
import components/preview.{preview}
import components/ui/divider.{divider}
import components/ui/link.{a}
import gleam/string
import kirala/markdown/html_renderer
import lustre/attribute.{attribute, class, href}
import lustre/element.{type Element}
import lustre/element/html.{div, h2, h3, p, span, text}
import model/route

pub fn variants(children: List(Element(a))) -> Element(a) {
  div([], [
    h2([], [text("Variants")]),
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.sm()]),
    ..children
  ])
}

pub fn variant(
  title: String,
  description: String,
  demo: List(Element(a)),
  code: String,
) -> Element(a) {
  div([], [
    h3([], [text(title)]),
    p([class("flex items-center gap-2")], [
      span(
        [
          attribute(
            "dangerous-unescaped-html",
            [
              "`",
              title
                |> string.lowercase,
              "(Color)`: Where color is one of ",
            ]
              |> string.join("")
              |> string.trim
              |> html_renderer.convert,
          ),
        ],
        [],
      ),
      a(
        [
          link.link(link.Neutral),
          link.underline(link.Always),
          href(route.colors),
          class("not-prose"),
        ],
        [text("Colors")],
      ),
    ]),
    p([], [
      description
      |> markdown.from_text,
    ]),
    preview(demo, code),
  ])
}
