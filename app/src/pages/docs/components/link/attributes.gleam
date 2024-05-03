import components/ui/link.{a}
import lustre/attribute.{href}
import lustre/element.{type Element, text}
import pages/docs/sections/section

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
        a([href("#"), link.link(link.Neutral), link.sm()], [text("Small")]),
        a([href("#"), link.link(link.Neutral), link.md()], [text("Medium")]),
        a([href("#"), link.link(link.Neutral), link.lg()], [text("Large")]),
      ],
      size_code(),
    ),
    section.attribute(
      "Underline",
      "
- `underline(Underline)`
Where `Underline` is one of the following: `Hover`|`Active`|`Focus`|`Always`
    ",
      [
        a([href("#"), link.link(link.Neutral)], [text("None")]),
        a([href("#"), link.link(link.Neutral), link.underline(link.Hover)], [
          text("Hover"),
        ]),
        a([href("#"), link.link(link.Neutral), link.underline(link.Active)], [
          text("Active"),
        ]),
        a([href("#"), link.link(link.Neutral), link.underline(link.Focus)], [
          text("Focus"),
        ]),
        a([href("#"), link.link(link.Neutral), link.underline(link.Always)], [
          text("Always"),
        ]),
      ],
      underline_code(),
    ),
  ])
}

fn size_code() -> String {
  "
import components/ui/link.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), link.link(link.Neutral), link.sm()], [text(\"Small\")]),
    a([href(\"#\"), link.link(link.Neutral), link.md()], [text(\"Medium\")]),
    a([href(\"#\"), link.link(link.Neutral), link.lg()], [text(\"Large\")]),
  ])
}
"
}

fn underline_code() -> String {
  "
import components/ui/link.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), link.link(link.Neutral)], [text(\"None\")]),
    a([href(\"#\"), link.link(link.Neutral), link.underline(link.Hover)], [text(\"Hover\")]),
    a([href(\"#\"), link.link(link.Neutral), link.underline(link.Active)], [text(\"Active\")]),
    a([href(\"#\"), link.link(link.Neutral), link.underline(link.Focus)], [text(\"Focus\")]),
    a([href(\"#\"), link.link(link.Neutral), link.underline(link.Always)], [text(\"Always\")]),
  ])
}
"
}
