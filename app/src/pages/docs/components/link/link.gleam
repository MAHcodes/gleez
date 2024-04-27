import components/code.{code}
import components/preview.{preview}
import components/ui/a.{a}
import gleam/string
import lustre/attribute.{class, href, target}
import lustre/element.{type Element, text}
import lustre/element/html.{div, h1, h2, p}
import lustre/ui/icon
import pages/docs/sections/section

pub fn docs() -> Element(a) {
  div([], [
    div([class("prose")], [
      section.intro(
        "Link",
        "Links allow users to click their way from page to page. This component is styled to resemble a hyperlink and semantically renders an <a>",
      ),
      section.installation("gleam run -m gleez add link"),
      section.variants([
        section.variant(
          "Link",
          "",
          [
            a([href("#"), a.link(a.Neutral)], [text("Primary")]),
            a([href("#"), a.link(a.Primary)], [text("Primary")]),
            a([href("#"), a.link(a.Secondary)], [text("Secondary")]),
            a([href("#"), a.link(a.Success)], [text("Success")]),
            a([href("#"), a.link(a.Info)], [text("Info")]),
            a([href("#"), a.link(a.Warning)], [text("Warning")]),
            a([href("#"), a.link(a.Danger)], [text("Danger")]),
          ],
          solid_code(),
        ),
        section.variant(
          "Light",
          "",
          [
            a([href("#"), a.light(a.Neutral), a.md()], [text("Neutral")]),
            a([href("#"), a.light(a.Primary), a.md()], [text("Primary")]),
            a([href("#"), a.light(a.Secondary), a.md()], [text("Secondary")]),
            a([href("#"), a.light(a.Success), a.md()], [text("Success")]),
            a([href("#"), a.light(a.Info), a.md()], [text("Info")]),
            a([href("#"), a.light(a.Warning), a.md()], [text("Warning")]),
            a([href("#"), a.light(a.Danger), a.md()], [text("Danger")]),
          ],
          light_code(),
        ),
        section.variant(
          "Flat",
          "",
          [
            a([href("#"), a.flat(a.Neutral), a.md()], [text("Neutral")]),
            a([href("#"), a.flat(a.Primary), a.md()], [text("Primary")]),
            a([href("#"), a.flat(a.Secondary), a.md()], [text("Secondary")]),
            a([href("#"), a.flat(a.Success), a.md()], [text("Success")]),
            a([href("#"), a.flat(a.Info), a.md()], [text("Info")]),
            a([href("#"), a.flat(a.Warning), a.md()], [text("Warning")]),
            a([href("#"), a.flat(a.Danger), a.md()], [text("Danger")]),
          ],
          flat_code(),
        ),
      ]),
      section.attributes([
        section.attribute(
          "Size",
          "",
          [
            a([href("#"), a.link(a.Primary), a.sm()], [text("Small")]),
            a([href("#"), a.link(a.Primary), a.md()], [text("Medium")]),
            a([href("#"), a.link(a.Primary), a.lg()], [text("Large")]),
          ],
          size_code(),
        ),
        section.attribute(
          "Underline",
          "",
          [
            a([href("#"), a.link(a.Primary)], [text("None")]),
            a([href("#"), a.link(a.Primary), a.underline(a.Hover)], [
              text("Hover"),
            ]),
            a([href("#"), a.link(a.Primary), a.underline(a.Active)], [
              text("Active"),
            ]),
            a([href("#"), a.link(a.Primary), a.underline(a.Focus)], [
              text("Focus"),
            ]),
            a([href("#"), a.link(a.Primary), a.underline(a.Always)], [
              text("Always"),
            ]),
          ],
          underline_code(),
        ),
      ]),
      section.examples([
        section.example(
          "With Icons",
          "",
          [
            a([href("#"), a.link(a.Primary), target("_blank")], [
              icon.github_logo([class("w-4")]),
              text("Custom Icon"),
            ]),
            a([href("#"), a.link(a.Primary), target("_blank")], [
              text("External Link"),
              icon.external_link([class("w-4")]),
            ]),
          ],
          with_icons_code(),
        ),
      ]),
    ]),
  ])
}

fn solid_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.link(a.Neutral)], [text(\"Primary\")]),
    a([href(\"#\"), a.link(a.Primary)], [text(\"Primary\")]),
    a([href(\"#\"), a.link(a.Secondary)], [text(\"Secondary\")]),
    a([href(\"#\"), a.link(a.Success)], [text(\"Success\")]),
    a([href(\"#\"), a.link(a.Info)], [text(\"Info\")]),
    a([href(\"#\"), a.link(a.Warning)], [text(\"Warning\")]),
    a([href(\"#\"), a.link(a.Danger)], [text(\"Danger\")]),
  ])
}
"
  |> string.trim
}

fn light_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.light(a.Neutral), a.md()], [text(\"Neutral\")]),
    a([href(\"#\"), a.light(a.Primary), a.md()], [text(\"Primary\")]),
    a([href(\"#\"), a.light(a.Secondary), a.md()], [text(\"Secondary\")]),
    a([href(\"#\"), a.light(a.Success), a.md()], [text(\"Success\")]),
    a([href(\"#\"), a.light(a.Info), a.md()], [text(\"Info\")]),
    a([href(\"#\"), a.light(a.Warning), a.md()], [text(\"Warning\")]),
    a([href(\"#\"), a.light(a.Danger), a.md()], [text(\"Danger\")]),
  ])
}
"
  |> string.trim
}

fn flat_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.flat(a.Neutral), a.md()], [text(\"Neutral\")]),
    a([href(\"#\"), a.flat(a.Primary), a.md()], [text(\"Primary\")]),
    a([href(\"#\"), a.flat(a.Secondary), a.md()], [text(\"Secondary\")]),
    a([href(\"#\"), a.flat(a.Success), a.md()], [text(\"Success\")]),
    a([href(\"#\"), a.flat(a.Info), a.md()], [text(\"Info\")]),
    a([href(\"#\"), a.flat(a.Warning), a.md()], [text(\"Warning\")]),
    a([href(\"#\"), a.flat(a.Danger), a.md()], [text(\"Danger\")]),
  ])
}
"
  |> string.trim
}

fn size_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.link(a.Primary), a.sm()], [text(\"Small\")]),
    a([href(\"#\"), a.link(a.Primary), a.md()], [text(\"Medium\")]),
    a([href(\"#\"), a.link(a.Primary), a.lg()], [text(\"Large\")]),
  ])
}
"
  |> string.trim
}

fn underline_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href}

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.link(a.Primary)], [text(\"None\")]),
    a([href(\"#\"), a.link(a.Primary), a.underline(a.Hover)], [text(\"Hover\")]),
    a([href(\"#\"), a.link(a.Primary), a.underline(a.Active)], [text(\"Active\")]),
    a([href(\"#\"), a.link(a.Primary), a.underline(a.Focus)], [text(\"Focus\")]),
    a([href(\"#\"), a.link(a.Primary), a.underline(a.Always)], [text(\"Always\")]),
  ])
}
"
  |> string.trim
}

fn with_icons_code() -> String {
  "
import components/ui/a.{a}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/attribute.{class, href, target}
import lustre/ui/icon

pub fn buttons() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    a([href(\"#\"), a.link(a.Primary), target(\"_blank\")], [
      icon.github_logo([class(\"w-4\")]),
      text(\"Custom Icon\"),
    ]),
    a([href(\"#\"), a.link(a.Primary), target(\"_blank\")], [
      text(\"External Link\"),
      icon.external_link([class(\"w-4\")]),
    ]),
  ])
}
"
  |> string.trim
}
