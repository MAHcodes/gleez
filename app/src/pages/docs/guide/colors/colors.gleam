import lustre/element.{type Element, text}
import lustre/element/html.{h1}

pub fn docs() -> Element(a) {
  h1([], [text("You're on colors")])
}
