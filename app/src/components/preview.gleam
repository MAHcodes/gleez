import components/code.{code}
import gleam/string
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn preview(children: List(Element(a)), content: String) -> Element(a) {
  div([class("flex flex-col gap-2 py-2 not-prose")], [
    div(
      [
        class(
          [
            "preview", "flex flex-wrap gap-4 items-center justify-center",
            "w-full border-2 border-foreground/10 p-12 rounded-md",
          ]
          |> string.join(" "),
        ),
      ],
      children,
    ),
    code(content, "gleam"),
  ])
}
