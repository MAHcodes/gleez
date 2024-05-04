import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        badge(
          [badge.solid(badge.Neutral), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Neutral")]),
        ),
        badge(
          [badge.solid(badge.Primary), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Primary")]),
        ),
        badge(
          [badge.solid(badge.Secondary), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Secondary")]),
        ),
        badge(
          [badge.solid(badge.Success), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Success")]),
        ),
        badge(
          [badge.solid(badge.Info), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Info")]),
        ),
        badge(
          [badge.solid(badge.Warning), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Warning")]),
        ),
        badge(
          [badge.solid(badge.Danger), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Danger")]),
        ),
      ],
      solid_code(),
    ),
    section.variant(
      "Outlined",
      "",
      [
        badge(
          [badge.outlined(badge.Neutral), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Neutral")]),
        ),
        badge(
          [badge.outlined(badge.Primary), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Primary")]),
        ),
        badge(
          [badge.outlined(badge.Secondary), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Secondary")]),
        ),
        badge(
          [badge.outlined(badge.Success), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Success")]),
        ),
        badge(
          [badge.outlined(badge.Info), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Info")]),
        ),
        badge(
          [badge.outlined(badge.Warning), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Warning")]),
        ),
        badge(
          [badge.outlined(badge.Danger), badge.md(), badge.top_right()],
          [text("2")],
          button([button.flat(button.Neutral), button.md()], [text("Danger")]),
        ),
      ],
      outlined_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full pt-8\")], [
    badge(
      [badge.solid(badge.Neutral), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Neutral\")]),
    ),
    badge(
      [badge.solid(badge.Primary), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Primary\")]),
    ),
    badge(
      [badge.solid(badge.Secondary), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Secondary\")]),
    ),
    badge(
      [badge.solid(badge.Success), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Success\")]),
    ),
    badge(
      [badge.solid(badge.Info), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Info\")]),
    ),
    badge(
      [badge.solid(badge.Warning), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Warning\")]),
    ),
    badge(
      [badge.solid(badge.Danger), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Danger\")]),
    ),
  ])
}
"
}

fn outlined_code() -> String {
  "
import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full pt-8\")], [
    badge(
      [badge.outlined(badge.Neutral), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Neutral\")]),
    ),
    badge(
      [badge.outlined(badge.Primary), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Primary\")]),
    ),
    badge(
      [badge.outlined(badge.Secondary), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Secondary\")]),
    ),
    badge(
      [badge.outlined(badge.Success), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Success\")]),
    ),
    badge(
      [badge.outlined(badge.Info), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Info\")]),
    ),
    badge(
      [badge.outlined(badge.Warning), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Warning\")]),
    ),
    badge(
      [badge.outlined(badge.Danger), badge.md(), badge.top_right()],
      [text(\"2\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Danger\")]),
    ),
  ])
}
"
}
