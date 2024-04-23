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
    ],
  )
}
