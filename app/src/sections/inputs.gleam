import components/ui/input.{input}
import lustre/attribute.{class, placeholder}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn inputs() -> Element(a) {
  div(
    [
      class(
        "p-4 grid grid-cols-7 gap-x-4 gap-y-8  items-center justify-items-center",
      ),
    ],
    [
      input([
        input.outline(input.Neutral),
        input.md(),
        placeholder("Outline Neutral"),
      ]),
      input([
        input.outline(input.Primary),
        input.md(),
        placeholder("Outline Primary"),
      ]),
      input([
        input.outline(input.Secondary),
        input.md(),
        placeholder("Outline Secondary"),
      ]),
      input([
        input.outline(input.Success),
        input.md(),
        placeholder("Outline Success"),
      ]),
      input([input.outline(input.Info), input.md(), placeholder("Outline Info")]),
      input([
        input.outline(input.Warning),
        input.md(),
        placeholder("Outline Warning"),
      ]),
      input([
        input.outline(input.Danger),
        input.md(),
        placeholder("Outline Danger"),
      ]),
      input([
        input.material(input.Neutral),
        input.md(),
        placeholder("Material Neutral"),
      ]),
      input([
        input.material(input.Primary),
        input.md(),
        placeholder("Material Primary"),
      ]),
      input([
        input.material(input.Secondary),
        input.md(),
        placeholder("Material Secondary"),
      ]),
      input([
        input.material(input.Success),
        input.md(),
        placeholder("Material Success"),
      ]),
      input([
        input.material(input.Info),
        input.md(),
        placeholder("Material Info"),
      ]),
      input([
        input.material(input.Warning),
        input.md(),
        placeholder("Material Warning"),
      ]),
      input([
        input.material(input.Danger),
        input.md(),
        placeholder("Material Danger"),
      ]),
      input([input.flat(input.Neutral), input.md(), placeholder("Flat Neutral")]),
      input([input.flat(input.Primary), input.md(), placeholder("Flat Primary")]),
      input([
        input.flat(input.Secondary),
        input.md(),
        placeholder("Flat Secondary"),
      ]),
      input([input.flat(input.Success), input.md(), placeholder("Flat Success")]),
      input([input.flat(input.Info), input.md(), placeholder("Flat Info")]),
      input([input.flat(input.Warning), input.md(), placeholder("Flat Warning")]),
      input([input.flat(input.Danger), input.md(), placeholder("Flat Danger")]),
      input([
        input.light(input.Neutral),
        input.md(),
        placeholder("Light Neutral"),
      ]),
      input([
        input.light(input.Primary),
        input.md(),
        placeholder("Light Primary"),
      ]),
      input([
        input.light(input.Secondary),
        input.md(),
        placeholder("Light Secondary"),
      ]),
      input([
        input.light(input.Success),
        input.md(),
        placeholder("Light Success"),
      ]),
      input([input.light(input.Info), input.md(), placeholder("Light Info")]),
      input([
        input.light(input.Warning),
        input.md(),
        placeholder("Light Warning"),
      ]),
      input([input.light(input.Danger), input.md(), placeholder("Light Danger")]),
      input([input.flat(input.Neutral), input.sm(), placeholder("Size Small")]),
      input([input.flat(input.Neutral), input.md(), placeholder("Size Medium")]),
      input([input.flat(input.Neutral), input.lg(), placeholder("Size Large")]),
      div([], [
        html.label([class("pl-2 text-xs text-primary")], [
          html.text("Enter Your Full Name"),
        ]),
        input([input.flat(input.Primary), input.md(), placeholder("With Label")]),
      ]),
      div([], [
        html.label([class("pl-2 text-xs text-primary")], [
          html.text("Enter Your Full Name"),
        ]),
        input([
          input.flat(input.Primary),
          input.md(),
          placeholder("With Helper Text"),
        ]),
        html.span([class("pl-2 text-xs text-neutral")], [
          html.text("This is a helper text"),
        ]),
      ]),
    ],
  )
}
