import lustre/element.{type Element, text}
import lustre/element/html.{h1}

pub fn home() -> Element(a) {
  h1([], [text("You're on home")])
}
