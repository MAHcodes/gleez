import components/ui/button.{button}
import components/ui/tooltip.{tooltip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("grid grid-cols-3 gap-4 w-full")], [
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.sm(), tooltip.top(False)],
      [text("Small")],
      button([button.flat(button.Neutral), button.sm()], [text("Hover me")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.top(False)],
      [text("Medium")],
      button([button.flat(button.Neutral), button.md()], [text("Hover me")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.lg(), tooltip.top(False)],
      [text("Large")],
      button([button.flat(button.Neutral), button.lg()], [text("Hover me")]),
    ),
  ])
}
