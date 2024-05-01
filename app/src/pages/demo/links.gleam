import components/ui/link.{a}
import lustre/attribute.{class, href, target}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn links() -> Element(a) {
  div(
    [
      class(
        "p-4 grid grid-cols-7 gap-x-4 gap-y-8  items-center justify-items-center",
      ),
    ],
    [
      a([href("#"), link.link(link.Neutral)], [text("Link Primary")]),
      a([href("#"), link.link(link.Primary)], [text("Link Primary")]),
      a([href("#"), link.link(link.Secondary)], [text("Link Secondary")]),
      a([href("#"), link.link(link.Success)], [text("Link Success")]),
      a([href("#"), link.link(link.Info)], [text("Link Info")]),
      a([href("#"), link.link(link.Warning)], [text("Link Warning")]),
      a([href("#"), link.link(link.Danger)], [text("Link Danger")]),
      a([href("#"), link.light(link.Neutral), link.md()], [
        text("Light Neutral"),
      ]),
      a([href("#"), link.light(link.Primary), link.md()], [
        text("Light Primary"),
      ]),
      a([href("#"), link.light(link.Secondary), link.md()], [
        text("Light Secondary"),
      ]),
      a([href("#"), link.light(link.Success), link.md()], [
        text("Light Success"),
      ]),
      a([href("#"), link.light(link.Info), link.md()], [text("Light Info")]),
      a([href("#"), link.light(link.Warning), link.md()], [
        text("Light Warning"),
      ]),
      a([href("#"), link.light(link.Danger), link.md()], [text("Light Danger")]),
      a([href("#"), link.flat(link.Neutral), link.md()], [text("Flat Neutral")]),
      a([href("#"), link.flat(link.Primary), link.md()], [text("Flat Primary")]),
      a([href("#"), link.flat(link.Secondary), link.md()], [
        text("Flat Secondary"),
      ]),
      a([href("#"), link.flat(link.Success), link.md()], [text("Flat Success")]),
      a([href("#"), link.flat(link.Info), link.md()], [text("Flat Info")]),
      a([href("#"), link.flat(link.Warning), link.md()], [text("Flat Warning")]),
      a([href("#"), link.flat(link.Danger), link.md()], [text("Flat Danger")]),
      a([href("#"), link.link(link.Primary)], [text("Underline None")]),
      a([href("#"), link.link(link.Primary), link.underline(link.Hover)], [
        text("Underline Hover"),
      ]),
      a([href("#"), link.link(link.Primary), link.underline(link.Active)], [
        text("Underline Active"),
      ]),
      a([href("#"), link.link(link.Primary), link.underline(link.Focus)], [
        text("Underline Focus"),
      ]),
      a([href("#"), link.link(link.Primary), link.underline(link.Always)], [
        text("Underline Always"),
      ]),
      a([href("#"), link.link(link.Primary), link.disabled()], [
        text("Disabled"),
      ]),
      a([href("#"), link.link(link.Primary), target("_blank")], [
        text("External Link"),
        icon.external_link([class("w-4")]),
      ]),
      a([href("#"), link.link(link.Primary), target("_blank")], [
        icon.github_logo([class("w-4")]),
        text("Custom Icon"),
      ]),
      a([href("#"), link.flat(link.Primary), link.sm()], [text("Size Small")]),
      a([href("#"), link.flat(link.Primary), link.md()], [text("Size Medium")]),
      a([href("#"), link.flat(link.Primary), link.lg()], [text("Size Large")]),
    ],
  )
}
