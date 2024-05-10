import components/ui/spinner.{spinner}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div, span}
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "With Text",
      "",
      [
        div([class("flex flex-col gap-4 items-center")], [
          spinner([spinner.flat(spinner.Neutral), spinner.md()]),
          span([], [text("Loading...")]),
        ]),
      ],
      with_text_code(),
    ),
  ])
}

fn with_text_code() -> String {
  "
import components/ui/spinner.{spinner}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div, span}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    div([class(\"flex flex-col gap-4 items-center\")], [
      spinner([spinner.flat(spinner.Neutral), spinner.md()]),
      span([], [text(\"Loading...\")]),
    ]),
  ])
}
"
}
