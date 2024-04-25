import lustre/attribute.{class, href}
import lustre/element.{type Element, text}
import lustre/element/html.{a, nav}

pub fn home() -> Element(a) {
  html.h1([], [element.text("You're on home")])
}
