import components/ui/breadcrumbs.{breadcrumbs}
import components/ui/link.{a}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import pages/docs/sections/section

fn pages() -> List(Element(a)) {
  [
    a([], [text("Home")]),
    a([], [text("Music")]),
    a([], [text("Artist")]),
    a([], [text("Album")]),
    a([], [text("Songs")]),
  ]
}

fn separator() -> Element(a) {
  text("/")
}

pub fn attributes() -> Element(a) {
  section.attributes([
    section.attribute(
      "Size",
      "
- `sm()`: Small Size
- `md()`: Medium Size
- `lg()`: Large Size
    ",
      [
        div([class("flex flex-col items-center gap-4")], [
          breadcrumbs(
            [breadcrumbs.flat(breadcrumbs.Neutral), breadcrumbs.sm()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.flat(breadcrumbs.Neutral), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.flat(breadcrumbs.Neutral), breadcrumbs.lg()],
            separator(),
            pages(),
          ),
        ]),
      ],
      size_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/breadcrumbs.{breadcrumbs}
import components/ui/link.{a}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

fn pages() -> List(Element(a)) {
  [
    a([], [text(\"Home\")]),
    a([], [text(\"Music\")]),
    a([], [text(\"Artist\")]),
    a([], [text(\"Album\")]),
    a([], [text(\"Songs\")]),
  ]
}

fn separator() -> Element(a) {
  text(\"/\")
}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col items-center gap-4\")], [
    breadcrumbs(
      [breadcrumbs.flat(breadcrumbs.Neutral), breadcrumbs.sm()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.flat(breadcrumbs.Neutral), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.flat(breadcrumbs.Neutral), breadcrumbs.lg()],
      separator(),
      pages(),
    ),
  ])
}
"
}
