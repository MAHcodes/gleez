import lustre/attribute.{class, href}
import lustre/element.{type Element, text}
import lustre/element/html.{a, nav}

pub fn header() -> Element(a) {
  html.header([class("container")], [
    nav([class("flex gap-4")], [
      a([href("/home")], [text("Home")]),
      a([href("/demo")], [text("Demo")]),
      a([href("/docs/components/button")], [text("Button")]),
      a([href("/docs/components/input")], [text("Input")]),
    ]),
  ])
}
