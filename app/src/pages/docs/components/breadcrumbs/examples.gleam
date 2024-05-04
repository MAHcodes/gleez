import components/ui/breadcrumbs.{breadcrumbs}
import components/ui/link.{a}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/ui/icon
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "With Icons",
      "",
      [
        breadcrumbs(
          [breadcrumbs.light(breadcrumbs.Neutral), breadcrumbs.md()],
          icon.chevron_right([class("w-4")]),
          [
            a([], [icon.home([class("w-4")]), text("Home")]),
            a([], [icon.input([class("w-4")]), text("Music")]),
            a([], [icon.person([class("w-4")]), text("Artist")]),
            a([], [icon.card_stack_minus([class("w-4")]), text("Album")]),
            a([], [icon.heart([class("w-4")]), text("Songs")]),
          ],
        ),
      ],
      content_code(),
    ),
  ])
}

pub fn content_code() -> String {
  "
import components/ui/breadcrumbs.{breadcrumbs}
import components/ui/link.{a}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col items-center gap-4\")], [
    breadcrumbs(
      [breadcrumbs.light(breadcrumbs.Neutral), breadcrumbs.md()],
      icon.chevron_right([class(\"w-4\")]),
      [
        a([], [icon.home([class(\"w-4\")]), text(\"Home\")]),
        a([], [icon.input([class(\"w-4\")]), text(\"Music\")]),
        a([], [icon.person([class(\"w-4\")]), text(\"Artist\")]),
        a([], [icon.card_stack_minus([class(\"w-4\")]), text(\"Album\")]),
        a([], [icon.heart([class(\"w-4\")]), text(\"Songs\")]),
      ],
    ),
  ])
}
  "
}
