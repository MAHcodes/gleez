import components/ui/a.{a}
import components/ui/button.{button}
import lustre/attribute.{class, href, id, target}
import lustre/element.{type Element}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn actions() -> Element(a) {
  div([class("flex items-center gap-4")], [
    button([id("theme-toggle"), button.light(button.Neutral), button.icon()], [
      icon.sun([id("sun-icon"), class("w-5")]),
      icon.moon([id("moon-icon"), class("w-5 hidden")]),
    ]),
    a(
      [
        href("https://github.com/MAHcodes/gleez"),
        target("_blank"),
        a.light(a.Neutral),
        a.icon(),
      ],
      [icon.github_logo([class("w-5")])],
    ),
  ])
}
