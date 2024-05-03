import lustre/attribute.{alt, class, href, src}
import lustre/element.{type Element}
import lustre/element/html.{a, img}
import model/route

pub fn logo() -> Element(a) {
  a([href(route.home)], [
    img([
      src("/imgs/Gleez.svg"),
      alt("Gleez UI"),
      class("min-w-24 h-10 w-auto object-contain"),
    ]),
  ])
}
