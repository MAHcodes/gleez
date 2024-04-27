import components/ui/badge.{badge}
import components/ui/button.{button}
import lustre/attribute.{class, classes}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn badges() -> Element(a) {
  div(
    [
      class(
        "py-4 grid grid-cols-7 gap-x-4 gap-y-8  items-center justify-items-center",
      ),
    ],
    [
      badge([badge.solid(badge.Neutral), badge.md()], [text("Solid Neutral")]),
      badge([badge.solid(badge.Primary), badge.md()], [text("Solid Primary")]),
      badge([badge.solid(badge.Secondary), badge.md()], [
        text("Solid Secondary"),
      ]),
      badge([badge.solid(badge.Success), badge.md()], [text("Solid Success")]),
      badge([badge.solid(badge.Info), badge.md()], [text("Solid Info")]),
      badge([badge.solid(badge.Warning), badge.md()], [text("Solid Warning")]),
      badge([badge.solid(badge.Danger), badge.md()], [text("Solid Danger")]),
      badge([badge.outline(badge.Neutral), badge.md()], [
        text("Outline Neutral"),
      ]),
      badge([badge.outline(badge.Primary), badge.md()], [
        text("Outline Primary"),
      ]),
      badge([badge.outline(badge.Secondary), badge.md()], [
        text("Outline Secondary"),
      ]),
      badge([badge.outline(badge.Success), badge.md()], [
        text("Outline Success"),
      ]),
      badge([badge.outline(badge.Info), badge.md()], [text("Outline Info")]),
      badge([badge.outline(badge.Warning), badge.md()], [
        text("Outline Warning"),
      ]),
      badge([badge.outline(badge.Danger), badge.md()], [text("Outline Danger")]),
      badge([badge.light(badge.Neutral), badge.md()], [text("Light Neutral")]),
      badge([badge.light(badge.Primary), badge.md()], [text("Light Primary")]),
      badge([badge.light(badge.Secondary), badge.md()], [
        text("Light Secondary"),
      ]),
      badge([badge.light(badge.Success), badge.md()], [text("Light Success")]),
      badge([badge.light(badge.Info), badge.md()], [text("Light Info")]),
      badge([badge.light(badge.Warning), badge.md()], [text("Light Warning")]),
      badge([badge.light(badge.Danger), badge.md()], [text("Light Danger")]),
      badge([badge.flat(badge.Neutral), badge.md()], [text("Flat Neutral")]),
      badge([badge.flat(badge.Primary), badge.md()], [text("Flat Primary")]),
      badge([badge.flat(badge.Secondary), badge.md()], [text("Flat Secondary")]),
      badge([badge.flat(badge.Success), badge.md()], [text("Flat Success")]),
      badge([badge.flat(badge.Info), badge.md()], [text("Flat Info")]),
      badge([badge.flat(badge.Warning), badge.md()], [text("Flat Warning")]),
      badge([badge.flat(badge.Danger), badge.md()], [text("Flat Danger")]),
      badge([badge.solid(badge.Primary), badge.icon()], [
        icon.star_filled([class("w-5")]),
      ]),
      badge([badge.outline(badge.Primary), badge.icon()], [
        icon.star_filled([class("w-5")]),
      ]),
      badge([badge.solid(badge.Primary), badge.sm()], [text("Size Small")]),
      badge([badge.solid(badge.Primary), badge.md()], [text("Size Medium")]),
      badge([badge.solid(badge.Primary), badge.lg()], [text("Size Large")]),
      badge([badge.outline(badge.Primary), badge.md()], [
        text("Icon Start"),
        button([button.solid(button.Primary), class("rounded-full p-0.5")], [
          icon.cross([class("w-4")]),
        ]),
      ]),
    ],
  )
}
