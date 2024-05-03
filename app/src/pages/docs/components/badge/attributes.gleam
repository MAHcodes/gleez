import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/ui/icon
import pages/docs/sections/section

pub fn attributes() -> Element(a) {
  section.attributes([
    section.attribute(
      "Size",
      "
- `sm()`: Small Size
- `md()`: Medium Size
- `lg()`: Large Size
    ",
      [
        badge(
          [badge.solid(badge.Primary), badge.sm(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.sm()], [text("Small")]),
        ),
        badge(
          [badge.solid(badge.Primary), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Medium")]),
        ),
        badge(
          [badge.solid(badge.Primary), badge.lg(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.lg()], [text("Large")]),
        ),
      ],
      size_code(),
    ),
    section.attribute(
      "Dot",
      "
- `dot()`: Used when the badge content is empty to display a dot
    ",
      [
        badge(
          [
            badge.dot(),
            badge.solid(badge.Primary),
            badge.sm(),
            badge.top_right(),
          ],
          [],
          button([button.flat(button.Neutral), button.icon()], [
            icon.bell([class("w-5")]),
          ]),
        ),
        badge(
          [
            badge.dot(),
            badge.outlined(badge.Primary),
            badge.sm(),
            badge.top_right(),
          ],
          [],
          button([button.flat(button.Neutral), button.icon()], [
            icon.bell([class("w-5")]),
          ]),
        ),
      ],
      dot_code(),
    ),
    section.attribute(
      "Placement",
      "
- `top_left()`: Top left placement
- `top_right()`: Top right placement
- `bottom_left()`: Bottom left placement
- `bottom_right()`: Bottom right placement
    ",
      [
        div([class("grid grid-cols-2 gap-4 [&_button]:w-full")], [
          badge(
            [badge.solid(badge.Primary), badge.md(), badge.top_left()],
            [text("2")],
            button([button.flat(button.Neutral), button.md()], [
              text("Top Left"),
            ]),
          ),
          badge(
            [badge.solid(badge.Primary), badge.md(), badge.top_right()],
            [text("2")],
            button([button.flat(button.Neutral), button.md()], [
              text("Top Right"),
            ]),
          ),
          badge(
            [badge.solid(badge.Primary), badge.md(), badge.bottom_left()],
            [text("2")],
            button([button.flat(button.Neutral), button.md()], [
              text("Bottom Left"),
            ]),
          ),
          badge(
            [badge.solid(badge.Primary), badge.md(), badge.bottom_right()],
            [text("2")],
            button([button.flat(button.Neutral), button.md()], [
              text("Bottom Right"),
            ]),
          ),
        ]),
      ],
      placement_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full pt-8\")], [
    badge(
      [badge.solid(badge.Primary), badge.sm(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.sm()], [text(\"Small\")]),
    ),
    badge(
      [badge.solid(badge.Primary), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Medium\")]),
    ),
    badge(
      [badge.solid(badge.Primary), badge.lg(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.lg()], [text(\"Large\")]),
    ),
  ])
}
"
}

fn dot_code() -> String {
  "
import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full pt-8\")], [
    badge(
      [
        badge.dot(),
        badge.solid(badge.Primary),
        badge.sm(),
        badge.top_right(),
      ],
      [],
      button([button.flat(button.Neutral), button.icon()], [
        icon.bell([class(\"w-5\")]),
      ]),
    ),
    badge(
      [
        badge.dot(),
        badge.outlined(badge.Primary),
        badge.sm(),
        badge.top_right(),
      ],
      [],
      button([button.flat(button.Neutral), button.icon()], [
        icon.bell([class(\"w-5\")]),
      ]),
    ),
  ])
}
  "
}

fn placement_code() -> String {
  "
import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"grid grid-cols-2 gap-4 [&_button]:w-full\")], [
    badge(
      [badge.solid(badge.Primary), badge.md(), badge.top_left()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Top Left\")]),
    ),
    badge(
      [badge.solid(badge.Primary), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Top Right\")]),
    ),
    badge(
      [badge.solid(badge.Primary), badge.md(), badge.bottom_left()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Bottom Left\")]),
    ),
    badge(
      [badge.solid(badge.Primary), badge.md(), badge.bottom_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Bottom Right\")]),
    ),
  ])
}
"
}
