import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div, p}

pub fn demo() -> Element(a) {
  div([class("grid grid-cols-3 gap-4 w-full")], [
    div([class("flex items-center gap-4 h-6")], [
      p([], [text("Neutral")]),
      divider([divider.vertical(divider.Neutral)]),
      p([], [text("Primary")]),
      divider([divider.vertical(divider.Primary)]),
      p([], [text("Secondary")]),
      divider([divider.vertical(divider.Secondary)]),
      p([], [text("Success")]),
      divider([divider.vertical(divider.Success)]),
      p([], [text("Info")]),
      divider([divider.vertical(divider.Info)]),
      p([], [text("Warning")]),
      divider([divider.vertical(divider.Warning)]),
      p([], [text("Danger")]),
      divider([divider.vertical(divider.Danger)]),
    ]),
  ])
}
