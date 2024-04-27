import components/header/actions.{actions}
import components/header/logo.{logo}
import components/nav.{nav}
import components/ui/badge.{badge}
import gleam/string
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/route.{type Pages}

pub fn header(route: Pages) -> Element(a) {
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
      div([class("flex gap-2 items-center")], [
        logo(),
        badge([badge.flat(badge.Primary), badge.sm()], [text("Beta")]),
        nav(route),
      ]),
      actions(),
    ],
  )
}
