import components/ui/button.{button}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, pre, text}
import lustre/ui/icon

pub fn preview(children: Element(a), code: String) -> Element(a) {
  div([class("flex flex-col p-8 gap-4")], [
    div(
      [
        class(
          "w-full preview p-4 py-12 rounded-md",
        ),
      ],
      [children],
    ),
    div([class("relative group")], [
      pre([class("rounded-md p-4 language-gleam hljs")], [
        html.code([], [text(code)]),
      ]),
      button(
        [
          class("absolute top-4 right-4 invisible group-hover:visible"),
          button.icon(),
          button.flat(button.Neutral),
        ],
        [icon.copy([class("w-5")])],
      ),
    ]),
  ])
}
