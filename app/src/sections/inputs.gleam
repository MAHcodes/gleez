import components/ui/input.{input}
import lustre/attribute.{class}
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
        attribute.placeholder("Outline Neutral"),
      ]),
      input([
        input.outline(input.Primary),
        input.md(),
        attribute.placeholder("Outline Primary"),
      ]),
      input([
        input.outline(input.Secondary),
        input.md(),
        attribute.placeholder("Outline Secondary"),
      ]),
      input([
        input.outline(input.Success),
        input.md(),
        attribute.placeholder("Outline Success"),
      ]),
      input([
        input.outline(input.Info),
        input.md(),
        attribute.placeholder("Outline Info"),
      ]),
      input([
        input.outline(input.Warning),
        input.md(),
        attribute.placeholder("Outline Warning"),
      ]),
      input([
        input.outline(input.Danger),
        input.md(),
        attribute.placeholder("Outline Danger"),
      ]),
      input([
        input.material(input.Neutral),
        input.md(),
        attribute.placeholder("Material Neutral"),
      ]),
      input([
        input.material(input.Primary),
        input.md(),
        attribute.placeholder("Material Primary"),
      ]),
      input([
        input.material(input.Secondary),
        input.md(),
        attribute.placeholder("Material Secondary"),
      ]),
      input([
        input.material(input.Success),
        input.md(),
        attribute.placeholder("Material Success"),
      ]),
      input([
        input.material(input.Info),
        input.md(),
        attribute.placeholder("Material Info"),
      ]),
      input([
        input.material(input.Warning),
        input.md(),
        attribute.placeholder("Material Warning"),
      ]),
      input([
        input.material(input.Danger),
        input.md(),
        attribute.placeholder("Material Danger"),
      ]),
      input([
        input.flat(input.Neutral),
        input.md(),
        attribute.placeholder("Flat Neutral"),
      ]),
      input([
        input.flat(input.Primary),
        input.md(),
        attribute.placeholder("Flat Primary"),
      ]),
      input([
        input.flat(input.Secondary),
        input.md(),
        attribute.placeholder("Flat Secondary"),
      ]),
      input([
        input.flat(input.Success),
        input.md(),
        attribute.placeholder("Flat Success"),
      ]),
      input([
        input.flat(input.Info),
        input.md(),
        attribute.placeholder("Flat Info"),
      ]),
      input([
        input.flat(input.Warning),
        input.md(),
        attribute.placeholder("Flat Warning"),
      ]),
      input([
        input.flat(input.Danger),
        input.md(),
        attribute.placeholder("Flat Danger"),
      ]),
      input([
        input.light(input.Neutral),
        input.md(),
        attribute.placeholder("Light Neutral"),
      ]),
      input([
        input.light(input.Primary),
        input.md(),
        attribute.placeholder("Light Primary"),
      ]),
      input([
        input.light(input.Secondary),
        input.md(),
        attribute.placeholder("Light Secondary"),
      ]),
      input([
        input.light(input.Success),
        input.md(),
        attribute.placeholder("Light Success"),
      ]),
      input([
        input.light(input.Info),
        input.md(),
        attribute.placeholder("Light Info"),
      ]),
      input([
        input.light(input.Warning),
        input.md(),
        attribute.placeholder("Light Warning"),
      ]),
      input([
        input.light(input.Danger),
        input.md(),
        attribute.placeholder("Light Danger"),
      ]),
      input([
        input.flat(input.Neutral),
        input.sm(),
        attribute.placeholder("Size Small"),
      ]),
      input([
        input.flat(input.Neutral),
        input.md(),
        attribute.placeholder("Size Medium"),
      ]),
      input([
        input.flat(input.Neutral),
        input.lg(),
        attribute.placeholder("Size Large"),
      ]),
      div([], [
        html.label([class("pl-2 text-xs text-primary")], [
          html.text("Enter Your Full Name"),
        ]),
        input([
          input.flat(input.Primary),
          input.md(),
          attribute.placeholder("With Label"),
        ]),
      ]),
      div([], [
        html.label([class("pl-2 text-xs text-primary")], [
          html.text("Enter Your Full Name"),
        ]),
        input([
          input.flat(input.Primary),
          input.md(),
          attribute.placeholder("With Helper Text"),
        ]),
        html.span([class("pl-2 text-xs text-neutral")], [
          html.text("This is a helper text"),
        ]),
      ]),
    ],
  )
}
