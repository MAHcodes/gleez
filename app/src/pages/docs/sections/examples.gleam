import components/markdown
import components/preview.{preview}
import gleam/string
import lustre/element.{type Element}
import lustre/element/html.{div, h2, h3, p, text}

pub fn examples(examples: List(Element(a))) -> Element(a) {
  div([], [h2([], [text("Examples")]), ..examples])
}

pub fn example(
  title: String,
  description: String,
  demo: List(Element(a)),
  code: String,
) -> Element(a) {
  div([], [
    h3([], [text(title)]),
    p([], [
      description
      |> string.trim
      |> markdown.from_text,
    ]),
    preview(demo, code),
  ])
}
