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

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        div([class("flex flex-col items-center gap-4")], [
          breadcrumbs(
            [breadcrumbs.solid(breadcrumbs.Neutral), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.solid(breadcrumbs.Primary), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.solid(breadcrumbs.Secondary), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.solid(breadcrumbs.Success), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.solid(breadcrumbs.Info), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.solid(breadcrumbs.Warning), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.solid(breadcrumbs.Danger), breadcrumbs.md()],
            separator(),
            pages(),
          ),
        ]),
      ],
      solid_code(),
    ),
    section.variant(
      "Outlined",
      "",
      [
        div([class("flex flex-col items-center gap-4")], [
          breadcrumbs(
            [breadcrumbs.outlined(breadcrumbs.Neutral), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.outlined(breadcrumbs.Primary), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.outlined(breadcrumbs.Secondary), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.outlined(breadcrumbs.Success), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.outlined(breadcrumbs.Info), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.outlined(breadcrumbs.Warning), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.outlined(breadcrumbs.Danger), breadcrumbs.md()],
            separator(),
            pages(),
          ),
        ]),
      ],
      outlined_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        div([class("flex flex-col items-center gap-4")], [
          breadcrumbs(
            [breadcrumbs.flat(breadcrumbs.Neutral), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.flat(breadcrumbs.Primary), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.flat(breadcrumbs.Secondary), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.flat(breadcrumbs.Success), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.flat(breadcrumbs.Info), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.flat(breadcrumbs.Warning), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.flat(breadcrumbs.Danger), breadcrumbs.md()],
            separator(),
            pages(),
          ),
        ]),
      ],
      flat_code(),
    ),
    section.variant(
      "Light",
      "",
      [
        div([class("flex flex-col items-center gap-4")], [
          breadcrumbs(
            [breadcrumbs.light(breadcrumbs.Neutral), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.light(breadcrumbs.Primary), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.light(breadcrumbs.Secondary), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.light(breadcrumbs.Success), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.light(breadcrumbs.Info), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.light(breadcrumbs.Warning), breadcrumbs.md()],
            separator(),
            pages(),
          ),
          breadcrumbs(
            [breadcrumbs.light(breadcrumbs.Danger), breadcrumbs.md()],
            separator(),
            pages(),
          ),
        ]),
      ],
      light_code(),
    ),
  ])
}

fn solid_code() -> String {
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
      [breadcrumbs.solid(breadcrumbs.Neutral), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.solid(breadcrumbs.Primary), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.solid(breadcrumbs.Secondary), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.solid(breadcrumbs.Success), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.solid(breadcrumbs.Info), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.solid(breadcrumbs.Warning), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.solid(breadcrumbs.Danger), breadcrumbs.md()],
      separator(),
      pages(),
    ),
  ])
}
"
}

fn outlined_code() -> String {
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
      [breadcrumbs.outlined(breadcrumbs.Neutral), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.outlined(breadcrumbs.Primary), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.outlined(breadcrumbs.Secondary), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.outlined(breadcrumbs.Success), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.outlined(breadcrumbs.Info), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.outlined(breadcrumbs.Warning), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.outlined(breadcrumbs.Danger), breadcrumbs.md()],
      separator(),
      pages(),
    ),
  ])
}
"
}

fn flat_code() -> String {
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
      [breadcrumbs.flat(breadcrumbs.Neutral), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.flat(breadcrumbs.Primary), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.flat(breadcrumbs.Secondary), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.flat(breadcrumbs.Success), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.flat(breadcrumbs.Info), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.flat(breadcrumbs.Warning), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.flat(breadcrumbs.Danger), breadcrumbs.md()],
      separator(),
      pages(),
    ),
  ])
}
"
}

fn light_code() -> String {
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
      [breadcrumbs.light(breadcrumbs.Neutral), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.light(breadcrumbs.Primary), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.light(breadcrumbs.Secondary), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.light(breadcrumbs.Success), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.light(breadcrumbs.Info), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.light(breadcrumbs.Warning), breadcrumbs.md()],
      separator(),
      pages(),
    ),
    breadcrumbs(
      [breadcrumbs.light(breadcrumbs.Danger), breadcrumbs.md()],
      separator(),
      pages(),
    ),
  ])
}
"
}
