import components/nav
import components/ui/button.{button}
import gleam/string
import lustre/attribute.{alt, class, href, src}
import lustre/element.{type Element}
import lustre/element/html.{a, div, img}
import lustre/route
import lustre/ui/icon

fn logo() -> Element(a) {
  a([href(route.home)], [
    img([
      src("/src/assets/imgs/Gleez.svg"),
      alt("Gleez UI"),
      class("h-12 w-auto object-contain"),
    ]),
  ])
}

fn buttons() -> Element(a) {
  div([class("flex items-center gap-4")], [
    button([button.light(button.Neutral), button.icon()], [
      icon.sun([class("w-5")]),
    ]),
    button([button.light(button.Neutral), button.icon()], [
      icon.github_logo([class("w-5")]),
    ]),
  ])
}

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
    [logo(), nav.nav(), buttons()],
  )
}
