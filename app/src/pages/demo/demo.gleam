import components/ui/radio.{radio}
import components/ui/checkbox.{checkbox}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("flex flex-col flex-wrap gap-4 justify-center w-full")], [
    radio([radio.ghost(radio.Neutral), radio.sm()], [text("Disabled")]),
    checkbox([checkbox.ghost(checkbox.Neutral), checkbox.sm()], [text("Disabled")]),
    checkbox([checkbox.ghost(checkbox.Neutral), checkbox.md()], [text("Disabled")]),
    radio([radio.ghost(radio.Neutral), radio.md()], [text("Disabled")]),
    checkbox([checkbox.ghost(checkbox.Neutral), checkbox.lg()], [text("Disabled")]),
    radio([radio.ghost(radio.Neutral), radio.lg()], [text("Disabled")]),
  ])
}
