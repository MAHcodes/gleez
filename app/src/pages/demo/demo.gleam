import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("grid grid-cols-2 gap-4 [&_button]:w-full")], [
    badge(
      [badge.solid(badge.Primary), badge.md(), badge.top_left()],
      [text("2")],
      button([button.flat(button.Neutral), button.md()], [text("Top Left")]),
    ),
    badge(
      [badge.solid(badge.Primary), badge.md(), badge.top_right()],
      [text("2")],
      button([button.flat(button.Neutral), button.md()], [text("Top Right")]),
    ),
    badge(
      [badge.solid(badge.Primary), badge.md(), badge.bottom_left()],
      [text("2")],
      button([button.flat(button.Neutral), button.md()], [text("Bottom Left")]),
    ),
    badge(
      [badge.solid(badge.Primary), badge.md(), badge.bottom_right()],
      [text("2")],
      button([button.flat(button.Neutral), button.md()], [text("Bottom Right")]),
    ),
  ])
}
