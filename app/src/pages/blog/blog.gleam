import lustre/element.{type Element, text}
import lustre/element/html.{h1}

pub fn blog() -> Element(a) {
  h1([], [text("You're on blog")])
}
