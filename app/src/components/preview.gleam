import components/code.{code}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn preview(
  children: List(Element(a)),
  content: String,
) -> Element(a) {
  div([class("flex flex-col py-8")], [
    div(
      [
        class(
          "flex flex-wrap gap-4 items-center justify-center w-full preview border-2 border-foreground/10 p-12 rounded-t-md",
        ),
      ],
      children,
    ),
    code(content),
  ])
}
