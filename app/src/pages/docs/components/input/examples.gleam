import components/ui/input.{input}
import lustre/attribute.{class, placeholder}
import lustre/element.{type Element, text}
import lustre/element/html.{div, label, span}
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "Label and Helper Text",
      "",
      [
        div([class("flex flex-col gap-2")], [
          div(
            [
              class(
                "flex items-center justify-between px-2 text-xs text-neutral",
              ),
            ],
            [label([], [text("Label")]), span([], [text("16/255")])],
          ),
          input([
            input.flat(input.Neutral),
            input.md(),
            placeholder("Placeholder text"),
          ]),
          span([class("pl-2 text-xs text-neutral")], [
            text("Helper text goes here"),
          ]),
        ]),
      ],
      label_helper_code(),
    ),
  ])
}

fn label_helper_code() -> String {
  "
import components/ui/input.{input}
import lustre/attribute.{class, placeholder}
import lustre/element.{type Element, text}
import lustre/element/html.{div, label, span}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    div([class(\"flex flex-col gap-2\")], [
      div(
        [class(\"flex items-center justify-between px-2 text-xs text-neutral\")],
        [label([], [text(\"Label\")]), span([], [text(\"16/255\")])],
      ),
      input([
        input.flat(input.Neutral),
        input.md(),
        placeholder(\"Placeholder text\"),
      ]),
      span([class(\"pl-2 text-xs text-neutral\")], [text(\"Helper text goes here\")]),
    ]),
  ])
}
"
}
