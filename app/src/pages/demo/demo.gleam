import components/ui/spinner.{spinner}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("flex flex-wrap gap-4 items-center justify-center w-full")], [
    spinner([spinner.solid(spinner.Neutral), spinner.sm()]),
    spinner([spinner.solid(spinner.Neutral), spinner.md()]),
    spinner([spinner.solid(spinner.Neutral), spinner.lg()]),
  ])
}
