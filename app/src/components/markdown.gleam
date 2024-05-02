import gleam/result
import kirala/markdown/html_renderer
import lustre/attribute.{attribute, class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import simplifile

pub fn from_path(path: String) -> Element(a) {
  path
  |> read_file
  |> parse
  |> prose
}

pub fn from_text(text: String) -> Element(a) {
  text
  |> parse
  |> prose
}

fn parse(md: String) -> String {
  md
  |> html_renderer.convert
}

fn prose(content: String) -> Element(a) {
  div(
    [attribute("dangerous-unescaped-html", content), class("prose w-full")],
    [],
  )
}

fn read_file(path: String) -> String {
  path
  |> simplifile.read
  |> result.unwrap("error reading file:" <> path)
}
