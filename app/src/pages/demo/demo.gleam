import components/ui/checkbox.{checkbox}
import lustre/attribute.{checked, class, disabled}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("flex flex-wrap gap-4 items-center justify-center w-full")], [
    checkbox(
      [
        checkbox.solid(checkbox.Neutral),
        checkbox.md(),
        checked(True),
        disabled(True),
      ],
      [text("Disabled")],
    ),
  ])
}
