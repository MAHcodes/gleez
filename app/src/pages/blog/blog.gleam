import lustre/attribute.{class, href}
import lustre/element.{type Element, text}
import lustre/element/html.{a, nav}

pub fn blog() -> Element(a) {
  html.h1([], [element.text("You're on blog")])
}
