import components/ui/button.{button}
import components/ui/tooltip.{tooltip}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        tooltip(
          [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.top(False)],
          [text("Neutral")],
          button([button.flat(button.Neutral), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.solid(tooltip.Primary), tooltip.md(), tooltip.top(False)],
          [text("Primary")],
          button([button.flat(button.Primary), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.solid(tooltip.Secondary), tooltip.md(), tooltip.top(False)],
          [text("Secondary")],
          button([button.flat(button.Secondary), button.md()], [
            text("Hover me"),
          ]),
        ),
        tooltip(
          [tooltip.solid(tooltip.Success), tooltip.md(), tooltip.top(False)],
          [text("Success")],
          button([button.flat(button.Success), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.solid(tooltip.Info), tooltip.md(), tooltip.top(False)],
          [text("Info")],
          button([button.flat(button.Info), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.solid(tooltip.Warning), tooltip.md(), tooltip.top(False)],
          [text("Warning")],
          button([button.flat(button.Warning), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.solid(tooltip.Danger), tooltip.md(), tooltip.top(False)],
          [text("Danger")],
          button([button.flat(button.Danger), button.md()], [text("Hover me")]),
        ),
      ],
      solid_code(),
    ),
    section.variant(
      "Outlined",
      "",
      [
        tooltip(
          [tooltip.outlined(tooltip.Neutral), tooltip.md(), tooltip.top(False)],
          [text("Neutral")],
          button([button.flat(button.Neutral), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.outlined(tooltip.Primary), tooltip.md(), tooltip.top(False)],
          [text("Primary")],
          button([button.flat(button.Primary), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [
            tooltip.outlined(tooltip.Secondary),
            tooltip.md(),
            tooltip.top(False),
          ],
          [text("Secondary")],
          button([button.flat(button.Secondary), button.md()], [
            text("Hover me"),
          ]),
        ),
        tooltip(
          [tooltip.outlined(tooltip.Success), tooltip.md(), tooltip.top(False)],
          [text("Success")],
          button([button.flat(button.Success), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.outlined(tooltip.Info), tooltip.md(), tooltip.top(False)],
          [text("Info")],
          button([button.flat(button.Info), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.outlined(tooltip.Warning), tooltip.md(), tooltip.top(False)],
          [text("Warning")],
          button([button.flat(button.Warning), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.outlined(tooltip.Danger), tooltip.md(), tooltip.top(False)],
          [text("Danger")],
          button([button.flat(button.Danger), button.md()], [text("Hover me")]),
        ),
      ],
      outlined_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        tooltip(
          [tooltip.flat(tooltip.Neutral), tooltip.md(), tooltip.top(False)],
          [text("Neutral")],
          button([button.flat(button.Neutral), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.flat(tooltip.Primary), tooltip.md(), tooltip.top(False)],
          [text("Primary")],
          button([button.flat(button.Primary), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.flat(tooltip.Secondary), tooltip.md(), tooltip.top(False)],
          [text("Secondary")],
          button([button.flat(button.Secondary), button.md()], [
            text("Hover me"),
          ]),
        ),
        tooltip(
          [tooltip.flat(tooltip.Success), tooltip.md(), tooltip.top(False)],
          [text("Success")],
          button([button.flat(button.Success), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.flat(tooltip.Info), tooltip.md(), tooltip.top(False)],
          [text("Info")],
          button([button.flat(button.Info), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.flat(tooltip.Warning), tooltip.md(), tooltip.top(False)],
          [text("Warning")],
          button([button.flat(button.Warning), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.flat(tooltip.Danger), tooltip.md(), tooltip.top(False)],
          [text("Danger")],
          button([button.flat(button.Danger), button.md()], [text("Hover me")]),
        ),
      ],
      flat_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/button.{button}
import components/ui/tooltip.{tooltip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.top(False)],
      [text(\"Neutral\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Primary), tooltip.md(), tooltip.top(False)],
      [text(\"Primary\")],
      button([button.flat(button.Primary), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Secondary), tooltip.md(), tooltip.top(False)],
      [text(\"Secondary\")],
      button([button.flat(button.Secondary), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Success), tooltip.md(), tooltip.top(False)],
      [text(\"Success\")],
      button([button.flat(button.Success), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Info), tooltip.md(), tooltip.top(False)],
      [text(\"Info\")],
      button([button.flat(button.Info), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Warning), tooltip.md(), tooltip.top(False)],
      [text(\"Warning\")],
      button([button.flat(button.Warning), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Danger), tooltip.md(), tooltip.top(False)],
      [text(\"Danger\")],
      button([button.flat(button.Danger), button.md()], [text(\"Hover me\")]),
    ),
  ])
}
"
}

fn outlined_code() -> String {
  "
import components/ui/button.{button}
import components/ui/tooltip.{tooltip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    tooltip(
      [tooltip.outlined(tooltip.Neutral), tooltip.md(), tooltip.top(False)],
      [text(\"Neutral\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.outlined(tooltip.Primary), tooltip.md(), tooltip.top(False)],
      [text(\"Primary\")],
      button([button.flat(button.Primary), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.outlined(tooltip.Secondary), tooltip.md(), tooltip.top(False)],
      [text(\"Secondary\")],
      button([button.flat(button.Secondary), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.outlined(tooltip.Success), tooltip.md(), tooltip.top(False)],
      [text(\"Success\")],
      button([button.flat(button.Success), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.outlined(tooltip.Info), tooltip.md(), tooltip.top(False)],
      [text(\"Info\")],
      button([button.flat(button.Info), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.outlined(tooltip.Warning), tooltip.md(), tooltip.top(False)],
      [text(\"Warning\")],
      button([button.flat(button.Warning), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.outlined(tooltip.Danger), tooltip.md(), tooltip.top(False)],
      [text(\"Danger\")],
      button([button.flat(button.Danger), button.md()], [text(\"Hover me\")]),
    ),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/button.{button}
import components/ui/tooltip.{tooltip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    tooltip(
      [tooltip.flat(tooltip.Neutral), tooltip.md(), tooltip.top(False)],
      [text(\"Neutral\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.flat(tooltip.Primary), tooltip.md(), tooltip.top(False)],
      [text(\"Primary\")],
      button([button.flat(button.Primary), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.flat(tooltip.Secondary), tooltip.md(), tooltip.top(False)],
      [text(\"Secondary\")],
      button([button.flat(button.Secondary), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.flat(tooltip.Success), tooltip.md(), tooltip.top(False)],
      [text(\"Success\")],
      button([button.flat(button.Success), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.flat(tooltip.Info), tooltip.md(), tooltip.top(False)],
      [text(\"Info\")],
      button([button.flat(button.Info), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.flat(tooltip.Warning), tooltip.md(), tooltip.top(False)],
      [text(\"Warning\")],
      button([button.flat(button.Warning), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.flat(tooltip.Danger), tooltip.md(), tooltip.top(False)],
      [text(\"Danger\")],
      button([button.flat(button.Danger), button.md()], [text(\"Hover me\")]),
    ),
  ])
}
"
}
