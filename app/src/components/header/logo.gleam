import lustre/attribute.{alt, class, href, src}
import lustre/element.{type Element}
import lustre/element/html.{a, img}
import lustre/route

pub fn logo() -> Element(a) {
  a([href(route.home)], [
    img([
      src("/src/assets/imgs/Gleez.svg"),
      alt("Gleez UI"),
      class("h-10 w-auto object-contain"),
    ]),
  ])
}
