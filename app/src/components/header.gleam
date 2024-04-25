import gleam/string
import lustre/attribute.{alt, class, href, src}
import lustre/element.{type Element, text}
import lustre/element/html.{a, img, nav}
import lustre/route

pub fn header() -> Element(a) {
  html.header(
    [
      class(
        [
          "sticky top-0 container py-4 bg-background z-30",
          "flex gap-4 items-center justify-between",
        ]
        |> string.join(" "),
      ),
    ],
    [
      a([href(route.home)], [
        img([
          src("/src/assets/imgs/Gleez.svg"),
          alt("Gleez UI"),
          class("h-12 w-auto object-contain"),
        ]),
      ]),
      nav([class("flex gap-4")], [
        a([href(route.home)], [text("Home")]),
        a([href(route.demo)], [text("Demo")]),
        a([href(route.button)], [text("Components")]),
      ]),
    ],
  )
}
