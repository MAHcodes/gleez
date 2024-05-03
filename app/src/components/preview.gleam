import components/snippet.{snippet}
import components/ui/button.{button}
import gleam/string
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn preview(children: List(Element(a)), content: String) -> Element(a) {
  div(
    [
      class(
        [
          "relative flex flex-col gap-2 py-2 not-prose",
          "[&>.source-code.hide]:hidden",
        ]
        |> string.join(" "),
      ),
    ],
    [
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
      snippet(string.trim(content), "gleam"),
      button(
        [
          class("less-is-more absolute top-5 right-3"),
          button.icon(),
          button.light(button.Neutral),
        ],
        [icon.code([class("w-5")])],
      ),
    ],
  )
}
