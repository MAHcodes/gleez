import lustre/attribute.{class, href}
import lustre/element.{type Element, text}
import lustre/element/html.{a}
import lustre/route

pub fn nav() -> Element(a) {
  html.nav([class("flex gap-8")], [
    a([href(route.home)], [text("Home")]),
    a([href(route.demo)], [text("Demo")]),
    a([href(route.docs)], [text("Docs")]),
  ])
}
