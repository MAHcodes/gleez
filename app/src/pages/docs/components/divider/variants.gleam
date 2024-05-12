import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        div([class("flex flex-col items-center gap-8 w-full")], [
          divider([
            divider.solid(divider.Neutral),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.solid(divider.Primary),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.solid(divider.Secondary),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.solid(divider.Success),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.solid(divider.Info),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.solid(divider.Warning),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.solid(divider.Danger),
            divider.horizontal(),
            divider.md(),
          ]),
        ]),
      ],
      solid_code(),
    ),
    section.variant(
      "Dashed",
      "",
      [
        div([class("flex flex-col items-center gap-8 w-full")], [
          divider([
            divider.dashed(divider.Neutral),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dashed(divider.Primary),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dashed(divider.Secondary),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dashed(divider.Success),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dashed(divider.Info),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dashed(divider.Warning),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dashed(divider.Danger),
            divider.horizontal(),
            divider.md(),
          ]),
        ]),
      ],
      dashed_code(),
    ),
    section.variant(
      "Dotted",
      "",
      [
        div([class("flex flex-col items-center gap-8 w-full")], [
          divider([
            divider.dotted(divider.Neutral),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dotted(divider.Primary),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dotted(divider.Secondary),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dotted(divider.Success),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dotted(divider.Info),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dotted(divider.Warning),
            divider.horizontal(),
            divider.md(),
          ]),
          divider([
            divider.dotted(divider.Danger),
            divider.horizontal(),
            divider.md(),
          ]),
        ]),
      ],
      dotted_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col items-center gap-8 w-full\")], [
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.md()]),
    divider([divider.solid(divider.Primary), divider.horizontal(), divider.md()]),
    divider([divider.solid(divider.Secondary), divider.horizontal(), divider.md()]),
    divider([divider.solid(divider.Success), divider.horizontal(), divider.md()]),
    divider([divider.solid(divider.Info), divider.horizontal(), divider.md()]),
    divider([divider.solid(divider.Warning), divider.horizontal(), divider.md()]),
    divider([divider.solid(divider.Danger), divider.horizontal(), divider.md()]),
  ])
}
"
}

fn dashed_code() -> String {
  "
import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col items-center gap-8 w-full\")], [
    divider([divider.dashed(divider.Neutral), divider.horizontal(), divider.md()]),
    divider([divider.dashed(divider.Primary), divider.horizontal(), divider.md()]),
    divider([divider.dashed(divider.Secondary), divider.horizontal(), divider.md()]),
    divider([divider.dashed(divider.Success), divider.horizontal(), divider.md()]),
    divider([divider.dashed(divider.Info), divider.horizontal(), divider.md()]),
    divider([divider.dashed(divider.Warning), divider.horizontal(), divider.md()]),
    divider([divider.dashed(divider.Danger), divider.horizontal(), divider.md()]),
  ])
}
"
}

fn dotted_code() -> String {
  "
import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col items-center gap-8 w-full\")], [
    divider([divider.dotted(divider.Neutral), divider.horizontal(), divider.md()]),
    divider([divider.dotted(divider.Primary), divider.horizontal(), divider.md()]),
    divider([divider.dotted(divider.Secondary), divider.horizontal(), divider.md()]),
    divider([divider.dotted(divider.Success), divider.horizontal(), divider.md()]),
    divider([divider.dotted(divider.Info), divider.horizontal(), divider.md()]),
    divider([divider.dotted(divider.Warning), divider.horizontal(), divider.md()]),
    divider([divider.dotted(divider.Danger), divider.horizontal(), divider.md()]),
  ])
}
"
}
