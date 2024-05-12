import components/ui/button.{button}
import components/ui/divider.{divider}
import components/ui/link.{a}
import components/ui/tooltip.{tooltip}
import lustre/attribute.{attribute, class, href, id, target}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn actions() -> Element(a) {
  div([class("flex items-center h-5 gap-4")], [
    tooltip(
      [
        tooltip.flat(tooltip.Neutral),
        tooltip.open_delay(tooltip.Ms200),
        tooltip.bottom(arrow: True),
        tooltip.sm(),
      ],
      [text("Toggle theme")],
      button(
        [
          id("theme-toggle"),
          button.light(button.Neutral),
          button.icon(),
          attribute("aria-label", "Toggle theme"),
        ],
        [
          icon.sun([id("sun-icon"), class("w-5")]),
          icon.moon([id("moon-icon"), class("w-5 hidden")]),
        ],
      ),
    ),
    divider([divider.solid(divider.Neutral), divider.sm(), divider.vertical()]),
    tooltip(
      [
        tooltip.flat(tooltip.Neutral),
        tooltip.open_delay(tooltip.Ms200),
        tooltip.sm(),
        tooltip.bottom_end(arrow: True),
      ],
      [icon.star_filled([class("w-3")]), text("Star us on GitHub")],
      a(
        [
          href("https://github.com/MAHcodes/gleez"),
          target("_blank"),
          link.light(link.Neutral),
          link.icon(),
          attribute("aria-label", "Star us on GitHub"),
        ],
        [icon.github_logo([class("w-5")])],
      ),
    ),
  ])
}
