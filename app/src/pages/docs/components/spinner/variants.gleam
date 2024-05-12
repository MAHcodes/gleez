import components/ui/spinner.{spinner}
import lustre/element.{type Element}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        spinner([spinner.solid(spinner.Neutral), spinner.md()]),
        spinner([spinner.solid(spinner.Primary), spinner.md()]),
        spinner([spinner.solid(spinner.Secondary), spinner.md()]),
        spinner([spinner.solid(spinner.Success), spinner.md()]),
        spinner([spinner.solid(spinner.Info), spinner.md()]),
        spinner([spinner.solid(spinner.Warning), spinner.md()]),
        spinner([spinner.solid(spinner.Danger), spinner.md()]),
      ],
      solid_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        spinner([spinner.flat(spinner.Neutral), spinner.md()]),
        spinner([spinner.flat(spinner.Primary), spinner.md()]),
        spinner([spinner.flat(spinner.Secondary), spinner.md()]),
        spinner([spinner.flat(spinner.Success), spinner.md()]),
        spinner([spinner.flat(spinner.Info), spinner.md()]),
        spinner([spinner.flat(spinner.Warning), spinner.md()]),
        spinner([spinner.flat(spinner.Danger), spinner.md()]),
      ],
      flat_code(),
    ),
    section.variant(
      "light",
      "",
      [
        spinner([spinner.light(spinner.Neutral), spinner.md()]),
        spinner([spinner.light(spinner.Primary), spinner.md()]),
        spinner([spinner.light(spinner.Secondary), spinner.md()]),
        spinner([spinner.light(spinner.Success), spinner.md()]),
        spinner([spinner.light(spinner.Info), spinner.md()]),
        spinner([spinner.light(spinner.Warning), spinner.md()]),
        spinner([spinner.light(spinner.Danger), spinner.md()]),
      ],
      light_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/spinner.{spinner}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    spinner([spinner.solid(spinner.Neutral), spinner.md()]),
    spinner([spinner.solid(spinner.Primary), spinner.md()]),
    spinner([spinner.solid(spinner.Secondary), spinner.md()]),
    spinner([spinner.solid(spinner.Success), spinner.md()]),
    spinner([spinner.solid(spinner.Info), spinner.md()]),
    spinner([spinner.solid(spinner.Warning), spinner.md()]),
    spinner([spinner.solid(spinner.Danger), spinner.md()]),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/spinner.{spinner}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    spinner([spinner.flat(spinner.Neutral), spinner.md()]),
    spinner([spinner.flat(spinner.Primary), spinner.md()]),
    spinner([spinner.flat(spinner.Secondary), spinner.md()]),
    spinner([spinner.flat(spinner.Success), spinner.md()]),
    spinner([spinner.flat(spinner.Info), spinner.md()]),
    spinner([spinner.flat(spinner.Warning), spinner.md()]),
    spinner([spinner.flat(spinner.Danger), spinner.md()]),
  ])
}
"
}

fn light_code() -> String {
  "
import components/ui/spinner.{spinner}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    spinner([spinner.light(spinner.Neutral), spinner.md()]),
    spinner([spinner.light(spinner.Primary), spinner.md()]),
    spinner([spinner.light(spinner.Secondary), spinner.md()]),
    spinner([spinner.light(spinner.Success), spinner.md()]),
    spinner([spinner.light(spinner.Info), spinner.md()]),
    spinner([spinner.light(spinner.Warning), spinner.md()]),
    spinner([spinner.light(spinner.Danger), spinner.md()]),
  ])
}
"
}
