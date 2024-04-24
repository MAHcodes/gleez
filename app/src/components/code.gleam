import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, pre, text}
import lustre/ui/icon

pub fn code(c: String) -> Element(a) {
  div([class("relative group")], [
    pre(
      [
        class(
          "rounded-b-md border-b-2 border-x-2 border-foreground/10 p-4 language-gleam hljs",
        ),
      ],
      [html.code([], [text(c)])],
    ),
    button(
      [
        class("absolute top-4 right-4 invisible group-hover:visible"),
        button.icon(),
        button.flat(button.Neutral),
      ],
      [icon.copy([class("w-5")])],
    ),
  ])
}
