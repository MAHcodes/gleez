import components/ui/input.{input}
import lustre/attribute.{class, placeholder}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("flex flex-wrap gap-4 items-center justify-center w-full")], [
    input([input.outlined(input.Neutral), input.md(), placeholder("Neutral")]),
    input([input.outlined(input.Primary), input.md(), placeholder("Primary")]),
    input([input.outlined(input.Secondary), input.md(), placeholder("Secondary")]),
    input([input.outlined(input.Success), input.md(), placeholder("Success")]),
    input([input.outlined(input.Info), input.md(), placeholder("Info")]),
    input([input.outlined(input.Warning), input.md(), placeholder("Warning")]),
    input([input.outlined(input.Danger), input.md(), placeholder("Danger")]),
  ])
}
