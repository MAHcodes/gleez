import components/ui/slider.{slider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("flex flex-col gap-2 py-2 w-full max-w-xs")], [
    slider([slider.solid(slider.Neutral), slider.sm()]),
    slider([slider.solid(slider.Neutral), slider.md()]),
    slider([slider.solid(slider.Neutral), slider.lg()]),
  ])
}
