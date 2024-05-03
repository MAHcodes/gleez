import components/markdown
import components/ui/link.{a}
import gleam/string
import lustre/attribute.{class, href, target}
import lustre/element.{type Element}
import lustre/element/html.{div, h1, p, text}
import lustre/ui/icon

fn page_source(title: String) -> String {
  [
    "https://github.com/MAHcodes/gleez/blob/master/app/src/components/ui/",
    string.lowercase(title),
    ".gleam",
  ]
  |> string.join("")
}

pub fn intro(title: String, description: String) -> Element(a) {
  div([], [
    h1([], [text(title)]),
    p([], [markdown.from_text(description)]),
    a(
      [
        href(page_source(title)),
        target("_blank"),
        class("not-prose"),
        link.flat(link.Neutral),
        link.md(),
      ],
      [
        icon.github_logo([class("w-4 mr-1")]),
        text("Source"),
        icon.external_link([class("w-4")]),
      ],
    ),
  ])
}
