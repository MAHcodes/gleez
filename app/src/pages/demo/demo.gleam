import components/ui/kbd.{kbd}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("flex flex-wrap gap-4 items-center justify-center w-full")], [
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [
      kbd.option(),
      kbd.command(),
      text("K"),
    ]),
  ])
}
