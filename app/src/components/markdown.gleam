import gleam/result
import lustre/attribute.{attribute, class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import kirala/markdown/html_renderer
import simplifile

pub fn from_path(path: String) -> Element(a) {
  path
  |> read_file
  |> parse
  |> porse
}

pub fn from_text(text: String) -> Element(a) {
  text
  |> parse
  |> porse
}

fn parse(md: String) -> String {
  md
  |> html_renderer.convert
}

fn porse(content: String) -> Element(a) {
  div([attribute("dangerous-unescaped-html", content), class("prose w-full")], [])
}

fn read_file(path: String) -> String {
  path
  |> simplifile.read
  |> result.unwrap("error reading file:" <> path)
}
