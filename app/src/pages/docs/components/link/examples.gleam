import components/ui/link.{a}
import lustre/attribute.{class, href, target}
import lustre/element.{type Element, text}
import lustre/ui/icon
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "With Icons",
      "",
      [
        a([href("#"), link.link(link.Neutral), target("_blank")], [
          icon.github_logo([class("w-4")]),
          text("Custom Icon"),
        ]),
        a([href("#"), link.link(link.Neutral), target("_blank")], [
          text("External Link"),
          icon.external_link([class("w-4")]),
        ]),
      ],
      with_icons_code(),
    ),
  ])
}

fn with_icons_code() -> String {
  "
import components/ui/link.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href, target}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), link.link(link.Neutral), target(\"_blank\")], [
      icon.github_logo([class(\"w-4\")]),
      text(\"Custom Icon\"),
    ]),
    a([href(\"#\"), link.link(link.Neutral), target(\"_blank\")], [
      text(\"External Link\"),
      icon.external_link([class(\"w-4\")]),
    ]),
  ])
}
"
}
