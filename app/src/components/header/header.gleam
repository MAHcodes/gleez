import components/header/actions.{actions}
import components/header/logo.{logo}
import components/nav.{nav}
import components/ui/chip.{chip}
import gleam/string
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import model/route.{type Pages}

pub fn header(route: Pages) -> Element(a) {
  html.header(
    [
      class(
        [
          "sticky top-0 container py-4 bg-background/50 backdrop-blur-md z-30",
          "flex gap-4 items-center justify-between",
        ]
        |> string.join(" "),
      ),
    ],
    [
      div([class("flex gap-2 items-center")], [
        logo(),
        chip([chip.flat(chip.Primary), chip.sm()], [text("Beta")]),
        nav(route),
      ]),
      actions(),
    ],
  )
}
