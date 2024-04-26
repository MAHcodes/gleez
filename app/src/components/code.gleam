import components/ui/button.{button}
import gleam/string
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, pre, text}
import lustre/ui/icon

pub fn code(c: String, lang: String) -> Element(a) {
  div([class("relative group")], [
    pre(
      [
        class(
          ["language-" <> lang, "hljs", "overflow-auto rounded-md border-2 border-foreground/10 p-4"]
          |> string.join(" "),
        ),
      ],
      [html.code([], [text(c)])],
    ),
    button(
      [
        class("copy absolute top-3 right-3 invisible group-hover:visible"),
        button.icon(),
        button.flat(button.Neutral),
      ],
      [icon.copy([class("w-5")])],
    ),
    button(
      [
        class("copy-success absolute top-3 right-3 invisible"),
        button.icon(),
        button.flat(button.Success),
      ],
      [icon.check([class("w-5")])],
    ),
    button(
      [
        class("copy-danger absolute top-2 right-3 invisible"),
        button.icon(),
        button.flat(button.Danger),
      ],
      [icon.cross([class("w-5")])],
    ),
  ])
}
