import components/ui/a.{a}
import lustre/attribute.{class, classes, href, target}
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
      a([href("#"), a.link(a.Neutral)], [text("Link Primary")]),
      a([href("#"), a.link(a.Primary)], [text("Link Primary")]),
      a([href("#"), a.link(a.Secondary)], [text("Link Secondary")]),
      a([href("#"), a.link(a.Success)], [text("Link Success")]),
      a([href("#"), a.link(a.Info)], [text("Link Info")]),
      a([href("#"), a.link(a.Warning)], [text("Link Warning")]),
      a([href("#"), a.link(a.Danger)], [text("Link Danger")]),
      a([href("#"), a.light(a.Neutral), a.md()], [text("Light Neutral")]),
      a([href("#"), a.light(a.Primary), a.md()], [text("Light Primary")]),
      a([href("#"), a.light(a.Secondary), a.md()], [text("Light Secondary")]),
      a([href("#"), a.light(a.Success), a.md()], [text("Light Success")]),
      a([href("#"), a.light(a.Info), a.md()], [text("Light Info")]),
      a([href("#"), a.light(a.Warning), a.md()], [text("Light Warning")]),
      a([href("#"), a.light(a.Danger), a.md()], [text("Light Danger")]),
      a([href("#"), a.flat(a.Neutral), a.md()], [text("Flat Neutral")]),
      a([href("#"), a.flat(a.Primary), a.md()], [text("Flat Primary")]),
      a([href("#"), a.flat(a.Secondary), a.md()], [text("Flat Secondary")]),
      a([href("#"), a.flat(a.Success), a.md()], [text("Flat Success")]),
      a([href("#"), a.flat(a.Info), a.md()], [text("Flat Info")]),
      a([href("#"), a.flat(a.Warning), a.md()], [text("Flat Warning")]),
      a([href("#"), a.flat(a.Danger), a.md()], [text("Flat Danger")]),
      a([href("#"), a.link(a.Primary)], [text("Underline None")]),
      a([href("#"), a.link(a.Primary), a.underline(a.Hover)], [
        text("Underline Hover"),
      ]),
      a([href("#"), a.link(a.Primary), a.underline(a.Active)], [
        text("Underline Active"),
      ]),
      a([href("#"), a.link(a.Primary), a.underline(a.Focus)], [
        text("Underline Focus"),
      ]),
      a([href("#"), a.link(a.Primary), a.underline(a.Always)], [
        text("Underline Always"),
      ]),
      a([href("#"), a.link(a.Primary), a.disabled()], [text("Disabled")]),
      a([href("#"), a.link(a.Primary), target("_blank")], [
        text("External Link"),
        icon.external_link([class("w-4")]),
      ]),
      a([href("#"), a.link(a.Primary), target("_blank")], [
        icon.github_logo([class("w-4")]),
        text("Custom Icon"),
      ]),
      a([href("#"), a.flat(a.Primary), a.sm()], [text("Size Small")]),
      a([href("#"), a.flat(a.Primary), a.md()], [text("Size Medium")]),
      a([href("#"), a.flat(a.Primary), a.lg()], [text("Size Large")]),
    ],
  )
}
