import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("flex flex-col items-center gap-8 w-full")], [
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.sm()]),
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.md()]),
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.lg()]),
  ])
}
