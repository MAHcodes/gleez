import components/ui/button.{button}
import lustre/attribute.{class, id}
import lustre/element.{type Element}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn actions() -> Element(a) {
  div([class("flex items-center gap-4")], [
    button([id("theme-toggle"), button.light(button.Neutral), button.icon()], [
      icon.sun([id("sun-icon"), class("w-5 hidden")]),
      icon.moon([id("moon-icon"), class("w-5 hidden")]),
    ]),
    button([button.light(button.Neutral), button.icon()], [
      icon.github_logo([class("w-5")]),
    ]),
  ])
}
