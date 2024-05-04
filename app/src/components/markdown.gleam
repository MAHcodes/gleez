import components/prose.{prose}
import gleam/string
import kirala/markdown/html_renderer
import lustre/attribute.{attribute, class}
import lustre/element.{type Element}

pub fn from_text(text: String) -> Element(a) {
  text
  |> string.trim
  |> parse
  |> dangerous_unescaped_html
}

fn parse(md: String) -> String {
  md
  |> html_renderer.convert
}

fn dangerous_unescaped_html(content: String) -> Element(a) {
  prose([attribute("dangerous-unescaped-html", content), class("w-full")], [])
}
