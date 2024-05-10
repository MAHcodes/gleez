import components/markdown
import components/preview.{preview}
import components/ui/divider.{divider}
import lustre/element.{type Element}
import lustre/element/html.{div, h2, h3, p, text}

pub fn attributes(attributes: List(Element(a))) -> Element(a) {
  div([], [
    h2([], [text("Attributes")]),
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.sm()]),
    ..attributes
  ])
}

pub fn attribute(
  title: String,
  description: String,
  demo: List(Element(a)),
  code: String,
) -> Element(a) {
  div([], [
    h3([], [text(title)]),
    p([], [
      description
      |> markdown.from_text,
    ]),
    preview(demo, code),
  ])
}
