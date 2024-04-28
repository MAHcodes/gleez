import components/preview.{preview}
import lustre/element.{type Element}
import lustre/element/html.{div, h2, h3, p, text}

pub fn variants(children: List(Element(a))) -> Element(a) {
  div([], [h2([], [text("Variants")]), ..children])
}

pub fn variant(
  title: String,
  description: String,
  demo: List(Element(a)),
  code: String,
) -> Element(a) {
  div([], [
    h3([], [text(title)]),
    p([], [text(description)]),
    preview(demo, code),
  ])
}