import components/markdown
import lustre/element.{type Element}
import lustre/element/html.{div, h1, p, text}

pub fn intro(title: String, description) -> Element(a) {
  div([], [h1([], [text(title)]), p([], [markdown.from_text(description)])])
}
