import components/ui/button.{button}
import components/ui/chip.{chip}
import lustre/attribute.{class, classes}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import lustre/ui/icon

pub fn chips() -> Element(a) {
  div(
    [
      class(
        "py-4 grid grid-cols-7 gap-x-4 gap-y-8  items-center justify-items-center",
      ),
    ],
    [
      chip([chip.solid(chip.Neutral), chip.md()], [text("Solid Neutral")]),
      chip([chip.solid(chip.Primary), chip.md()], [text("Solid Primary")]),
      chip([chip.solid(chip.Secondary), chip.md()], [text("Solid Secondary")]),
      chip([chip.solid(chip.Success), chip.md()], [text("Solid Success")]),
      chip([chip.solid(chip.Info), chip.md()], [text("Solid Info")]),
      chip([chip.solid(chip.Warning), chip.md()], [text("Solid Warning")]),
      chip([chip.solid(chip.Danger), chip.md()], [text("Solid Danger")]),
      chip([chip.outline(chip.Neutral), chip.md()], [text("Outline Neutral")]),
      chip([chip.outline(chip.Primary), chip.md()], [text("Outline Primary")]),
      chip([chip.outline(chip.Secondary), chip.md()], [
        text("Outline Secondary"),
      ]),
      chip([chip.outline(chip.Success), chip.md()], [text("Outline Success")]),
      chip([chip.outline(chip.Info), chip.md()], [text("Outline Info")]),
      chip([chip.outline(chip.Warning), chip.md()], [text("Outline Warning")]),
      chip([chip.outline(chip.Danger), chip.md()], [text("Outline Danger")]),
      chip([chip.light(chip.Neutral), chip.md()], [text("Light Neutral")]),
      chip([chip.light(chip.Primary), chip.md()], [text("Light Primary")]),
      chip([chip.light(chip.Secondary), chip.md()], [text("Light Secondary")]),
      chip([chip.light(chip.Success), chip.md()], [text("Light Success")]),
      chip([chip.light(chip.Info), chip.md()], [text("Light Info")]),
      chip([chip.light(chip.Warning), chip.md()], [text("Light Warning")]),
      chip([chip.light(chip.Danger), chip.md()], [text("Light Danger")]),
      chip([chip.flat(chip.Neutral), chip.md()], [text("Flat Neutral")]),
      chip([chip.flat(chip.Primary), chip.md()], [text("Flat Primary")]),
      chip([chip.flat(chip.Secondary), chip.md()], [text("Flat Secondary")]),
      chip([chip.flat(chip.Success), chip.md()], [text("Flat Success")]),
      chip([chip.flat(chip.Info), chip.md()], [text("Flat Info")]),
      chip([chip.flat(chip.Warning), chip.md()], [text("Flat Warning")]),
      chip([chip.flat(chip.Danger), chip.md()], [text("Flat Danger")]),
      chip([chip.solid(chip.Primary), chip.icon()], [
        icon.star_filled([class("w-5")]),
      ]),
      chip([chip.outline(chip.Primary), chip.icon()], [
        icon.star_filled([class("w-5")]),
      ]),
      chip([chip.solid(chip.Primary), chip.sm()], [text("Size Small")]),
      chip([chip.solid(chip.Primary), chip.md()], [text("Size Medium")]),
      chip([chip.solid(chip.Primary), chip.lg()], [text("Size Large")]),
      chip([chip.outline(chip.Primary), chip.md()], [
        text("Icon Start"),
        button([button.solid(button.Primary), class("rounded-full p-0.5")], [
          icon.cross([class("w-4")]),
        ]),
      ]),
    ],
  )
}
