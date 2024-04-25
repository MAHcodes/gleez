import gleam/result
import lustre/attribute.{attribute, class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import render_md
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
  |> render_md.render
}

fn porse(content: String) -> Element(a) {
  div([attribute("dangerous-unescaped-html", content), class("prose prose-invert w-full")], [])
}

fn read_file(path: String) -> String {
  path
  |> simplifile.read
  |> result.unwrap("error reading file:" <> path)
}
