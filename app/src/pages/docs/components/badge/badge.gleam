import components/preview.{preview}
import components/ui/badge.{badge}
import gleam/string
import lustre/element.{type Element}
import lustre/element/html.{div, text}

pub fn docs() -> Element(a) {
  div([], [
    preview(
      [
        badge([badge.solid(badge.Neutral), badge.md()], [text("Neutral")]),
        badge([badge.solid(badge.Primary), badge.md()], [text("Primary")]),
        badge([badge.solid(badge.Secondary), badge.md()], [
          text("Secondary"),
        ]),
        badge([badge.solid(badge.Success), badge.md()], [text("Success")]),
        badge([badge.solid(badge.Info), badge.md()], [text("Info")]),
        badge([badge.solid(badge.Warning), badge.md()], [text("Warning")]),
        badge([badge.solid(badge.Danger), badge.md()], [text("Danger")]),
      ],
      solid_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/badge.{badge}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn badges() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    badge([badge.solid(badge.Neutral), badge.md()], [text(\"Neutral\")]),
    badge([badge.solid(badge.Primary), badge.md()], [text(\"Primary\")]),
    badge([badge.solid(badge.Secondary), badge.md()], [text(\"Secondary\")]),
    badge([badge.solid(badge.Success), badge.md()], [text(\"Success\")]),
    badge([badge.solid(badge.Info), badge.md()], [text(\"Info\")]),
    badge([badge.solid(badge.Warning), badge.md()], [text(\"Warning\")]),
    badge([badge.solid(badge.Danger), badge.md()], [text(\"Danger\")]),
  ])
}
"
  |> string.trim
}
