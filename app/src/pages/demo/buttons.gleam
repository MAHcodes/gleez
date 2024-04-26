import components/ui/button.{button}
import lustre/attribute.{class, classes}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn buttons() -> Element(a) {
  div(
    [
      class(
        "py-4 grid grid-cols-7 gap-x-4 gap-y-8  items-center justify-items-center",
      ),
    ],
    [
      button([button.solid(button.Neutral), button.md()], [
        text("Solid Neutral"),
      ]),
      button([button.solid(button.Primary), button.md()], [
        text("Solid Primary"),
      ]),
      button([button.solid(button.Secondary), button.md()], [
        text("Solid Secondary"),
      ]),
      button([button.solid(button.Success), button.md()], [
        text("Solid Success"),
      ]),
      button([button.solid(button.Info), button.md()], [text("Solid Info")]),
      button([button.solid(button.Warning), button.md()], [
        text("Solid Warning"),
      ]),
      button([button.solid(button.Danger), button.md()], [text("Solid Danger")]),
      button([button.outline(button.Neutral), button.md()], [
        text("Outline Neutral"),
      ]),
      button([button.outline(button.Primary), button.md()], [
        text("Outline Primary"),
      ]),
      button([button.outline(button.Secondary), button.md()], [
        text("Outline Secondary"),
      ]),
      button([button.outline(button.Success), button.md()], [
        text("Outline Success"),
      ]),
      button([button.outline(button.Info), button.md()], [text("Outline Info")]),
      button([button.outline(button.Warning), button.md()], [
        text("Outline Warning"),
      ]),
      button([button.outline(button.Danger), button.md()], [
        text("Outline Danger"),
      ]),
      button([button.link(button.Neutral), button.md()], [text("Link Neutral")]),
      button([button.link(button.Primary), button.md()], [text("Link Primary")]),
      button([button.link(button.Secondary), button.md()], [
        text("Link Secondary"),
      ]),
      button([button.link(button.Success), button.md()], [text("Link Success")]),
      button([button.link(button.Info), button.md()], [text("Link Info")]),
      button([button.link(button.Warning), button.md()], [text("Link Warning")]),
      button([button.link(button.Danger), button.md()], [text("Link Danger")]),
      button([button.light(button.Neutral), button.md()], [
        text("Light Neutral"),
      ]),
      button([button.light(button.Primary), button.md()], [
        text("Light Primary"),
      ]),
      button([button.light(button.Secondary), button.md()], [
        text("Light Secondary"),
      ]),
      button([button.light(button.Success), button.md()], [
        text("Light Success"),
      ]),
      button([button.light(button.Info), button.md()], [text("Light Info")]),
      button([button.light(button.Warning), button.md()], [
        text("Light Warning"),
      ]),
      button([button.light(button.Danger), button.md()], [text("Light Danger")]),
      button([button.flat(button.Neutral), button.md()], [text("Flat Neutral")]),
      button([button.flat(button.Primary), button.md()], [text("Flat Primary")]),
      button([button.flat(button.Secondary), button.md()], [
        text("Flat Secondary"),
      ]),
      button([button.flat(button.Success), button.md()], [text("Flat Success")]),
      button([button.flat(button.Info), button.md()], [text("Flat Info")]),
      button([button.flat(button.Warning), button.md()], [text("Flat Warning")]),
      button([button.flat(button.Danger), button.md()], [text("Flat Danger")]),
      button([button.ghost(button.Neutral), button.md()], [
        text("Ghost Neutral"),
      ]),
      button([button.ghost(button.Primary), button.md()], [
        text("Ghost Primary"),
      ]),
      button([button.ghost(button.Secondary), button.md()], [
        text("Ghost Secondary"),
      ]),
      button([button.ghost(button.Success), button.md()], [
        text("Ghost Success"),
      ]),
      button([button.ghost(button.Info), button.md()], [text("Ghost Info")]),
      button([button.ghost(button.Warning), button.md()], [
        text("Ghost Warning"),
      ]),
      button([button.ghost(button.Danger), button.md()], [text("Ghost Danger")]),
      button([button.solid(button.Primary), button.icon()], [
        icon.star_filled([class("w-5")]),
      ]),
      button([button.outline(button.Primary), button.icon()], [
        icon.star_filled([class("w-5")]),
      ]),
      button([button.light(button.Primary), button.icon()], [
        icon.star_filled([class("w-5")]),
      ]),
      button([button.flat(button.Primary), button.icon()], [
        icon.star_filled([class("w-5")]),
      ]),
      button([button.link(button.Primary), button.icon()], [
        icon.star_filled([class("w-5")]),
      ]),
      button([button.ghost(button.Primary), button.icon()], [
        icon.star_filled([class("w-5")]),
      ]),
      button(
        [button.solid(button.Primary), button.md(), attribute.disabled(True)],
        [text("Disabled")],
      ),
      button([button.solid(button.Primary), button.sm()], [text("Size Small")]),
      button([button.solid(button.Primary), button.md()], [text("Size Medium")]),
      button([button.solid(button.Primary), button.lg()], [text("Size Large")]),
      button([button.solid(button.Primary), button.md()], [
        icon.star_filled([class("w-5")]),
        text("Icon Start"),
      ]),
      button([button.solid(button.Primary), button.md()], [
        text("Icon End"),
        icon.star_filled([class("w-5")]),
      ]),
      button(
        [button.solid(button.Primary), button.md(), attribute.disabled(True)],
        [
          icon.update([class("w-5"), classes([#("animate-spin", True)])]),
          text("Loading..."),
        ],
      ),
    ],
  )
}
