import components/ui/switch.{switch}
import lustre/attribute.{class, disabled}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("flex flex-wrap gap-4 items-center justify-center w-full")], [
    switch([switch.solid(switch.Neutral), switch.sm(), disabled(True)], [
      text("Disabled"),
    ]),
    switch([switch.outlined(switch.Neutral), switch.sm(), disabled(True)], [
      text("Disabled"),
    ]),
    switch([switch.ghost(switch.Neutral), switch.sm(), disabled(True)], [
      text("Disabled"),
    ]),
  ])
}
