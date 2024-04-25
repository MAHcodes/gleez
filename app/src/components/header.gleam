import lustre/attribute.{class, href}
import lustre/element.{type Element, text}
import lustre/element/html.{a, nav}
import lustre/route

pub fn header() -> Element(a) {
  html.header([class("container")], [
    nav([class("flex gap-4")], [
      a([href(route.home)], [text("Home")]),
      a([href(route.demo)], [text("Demo")]),
      a([href(route.components_button)], [text("Components")]),
    ]),
  ])
}
