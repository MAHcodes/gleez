import components/ui/avatar.{avatar}
import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/attribute.{class, src}
import lustre/element.{type Element, text}
import lustre/ui/icon
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "Content",
      "",
      [
        badge(
          [badge.solid(badge.Primary), badge.sm(), badge.top_right()],
          [text("5,986")],
          button([button.flat(button.Neutral), button.md()], [
            text("Long number"),
          ]),
        ),
        badge(
          [badge.solid(badge.Primary), badge.sm(), badge.top_right()],
          [text("New")],
          button([button.flat(button.Neutral), button.md()], [text("Text")]),
        ),
        badge(
          [
            badge.dot(),
            badge.solid(badge.Primary),
            badge.sm(),
            badge.top_right(),
          ],
          [icon.star_filled([class("w-3")])],
          button([button.flat(button.Neutral), button.md()], [text("Icon")]),
        ),
        badge(
          [
            badge.dot(),
            badge.solid(badge.Primary),
            badge.sm(),
            badge.bottom_right(),
          ],
          [icon.heart_filled([class("w-3")])],
          avatar([
            avatar.outlined(avatar.Primary),
            avatar.md(),
            avatar.radius_full(),
            src("https://i.pravatar.cc/40"),
          ]),
        ),
      ],
      content_code(),
    ),
  ])
}

pub fn content_code() -> String {
  "
import components/ui/avatar.{avatar}
import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/attribute.{class, src}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class(\"grid grid-cols-2 gap-4 [&_button]:w-full\")], [
    badge(
      [badge.solid(badge.Primary), badge.sm(), badge.top_right()],
      [text(\"5,986\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Long number\")]),
    ),
    badge(
      [badge.solid(badge.Primary), badge.sm(), badge.top_right()],
      [text(\"New\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Text\")]),
    ),
    badge(
      [
        badge.dot(),
        badge.solid(badge.Primary),
        badge.sm(),
        badge.top_right(),
      ],
      [icon.star_filled([class(\"w-3\")])],
      button([button.flat(button.Neutral), button.md()], [text(\"Icon\")]),
    ),
    badge(
      [
        badge.dot(),
        badge.solid(badge.Primary),
        badge.sm(),
        badge.bottom_right(),
      ],
      [icon.heart_filled([class(\"w-3\")])],
      avatar([
        avatar.outlined(avatar.Primary),
        avatar.md(),
        avatar.radius_full(),
        src(\"https://i.pravatar.cc/40\"),
      ]),
    ),
  ])
}
"
}
