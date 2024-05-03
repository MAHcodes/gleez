import components/ui/button.{button}
import components/ui/tooltip.{tooltip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}
import pages/docs/sections/section

pub fn attributes() -> Element(a) {
  section.attributes([
    section.attribute(
      "Size",
      "
- `sm()`: Small Size
- `md()`: Medium Size
- `lg()`: Large Size
    ",
      [
        tooltip(
          [tooltip.solid(tooltip.Neutral), tooltip.sm(), tooltip.top(False)],
          [text("Small")],
          button([button.flat(button.Neutral), button.sm()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.top(False)],
          [text("Medium")],
          button([button.flat(button.Neutral), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [tooltip.solid(tooltip.Neutral), tooltip.lg(), tooltip.top(False)],
          [text("Large")],
          button([button.flat(button.Neutral), button.lg()], [text("Hover me")]),
        ),
      ],
      size_code(),
    ),
    section.attribute(
      "Delay",
      "
- `delay(Time)`: Sets tooltip open and close delay
- `open_delay(Time)`: Sets tooltip open delay
- `close_delay(Time)`: Sets tooltip close delay
Where `Time` is one of the following:
`Ms0`|`Ms75`|`Ms100`|`Ms150`|`Ms200`|`Ms300`|`Ms500`|`Ms1000`",
      [
        tooltip(
          [
            tooltip.solid(tooltip.Neutral),
            tooltip.md(),
            tooltip.top(False),
            tooltip.delay(tooltip.Ms500),
          ],
          [text("Open and Close Delay 500ms")],
          button([button.flat(button.Neutral), button.sm()], [text("Hover me")]),
        ),
        tooltip(
          [
            tooltip.solid(tooltip.Neutral),
            tooltip.md(),
            tooltip.top(False),
            tooltip.open_delay(tooltip.Ms500),
          ],
          [text("Open Delay 500ms")],
          button([button.flat(button.Neutral), button.sm()], [text("Hover me")]),
        ),
        tooltip(
          [
            tooltip.solid(tooltip.Neutral),
            tooltip.md(),
            tooltip.top(False),
            tooltip.close_delay(tooltip.Ms500),
          ],
          [text("Close Delay 500ms")],
          button([button.flat(button.Neutral), button.sm()], [text("Hover me")]),
        ),
      ],
      size_code(),
    ),
    section.attribute(
      "Placement",
      "
- `top_start(arrow: Bool)`: Top start placement
- `top(arrow: Bool)`: Top placement
- `top_end(arrow: Bool)`: Top end placement
- `left_start(arrow: Bool)`: Left start placement
- `left(arrow: Bool)`: Left placement
- `left_end(arrow: Bool)`: Left end placement
- `right_start(arrow: Bool)`: Right start placement
- `right(arrow: Bool)`: Right placement
- `right_end(arrow: Bool)`: Right end placement
- `bottom_start(arrow: Bool)`: Bottom start placement
- `bottom(arrow: Bool)`: Bottom placement
- `bottom_end(arrow: Bool)`: Bottom end placement
`arrow` specifies whether the tooltip should have an arrow or not
    ",
      [
        div([class("grid grid-cols-3 gap-4 w-full [&_button]:w-full")], [
          tooltip(
            [
              tooltip.solid(tooltip.Neutral),
              tooltip.md(),
              tooltip.top_start(True),
            ],
            [text("Top Start")],
            button([button.flat(button.Neutral), button.md()], [
              text("Top Start"),
            ]),
          ),
          tooltip(
            [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.top(True)],
            [text("Top")],
            button([button.flat(button.Neutral), button.md()], [text("Top")]),
          ),
          tooltip(
            [
              tooltip.solid(tooltip.Neutral),
              tooltip.md(),
              tooltip.top_end(True),
            ],
            [text("Top End")],
            button([button.flat(button.Neutral), button.md()], [text("Top End")]),
          ),
          tooltip(
            [
              tooltip.solid(tooltip.Neutral),
              tooltip.md(),
              tooltip.left_start(True),
            ],
            [text("Left Start")],
            button([button.flat(button.Neutral), button.md()], [
              text("Left Start"),
            ]),
          ),
          div([], []),
          tooltip(
            [
              tooltip.solid(tooltip.Neutral),
              tooltip.md(),
              tooltip.right_start(True),
            ],
            [text("Right Start")],
            button([button.flat(button.Neutral), button.md()], [
              text("Right Start"),
            ]),
          ),
          tooltip(
            [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.left(True)],
            [text("Left")],
            button([button.flat(button.Neutral), button.md()], [text("Left")]),
          ),
          div([], []),
          tooltip(
            [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.right(True)],
            [text("Right")],
            button([button.flat(button.Neutral), button.md()], [text("Right")]),
          ),
          tooltip(
            [
              tooltip.solid(tooltip.Neutral),
              tooltip.md(),
              tooltip.left_end(True),
            ],
            [text("Left End")],
            button([button.flat(button.Neutral), button.md()], [
              text("Left End"),
            ]),
          ),
          div([], []),
          tooltip(
            [
              tooltip.solid(tooltip.Neutral),
              tooltip.md(),
              tooltip.right_end(True),
            ],
            [text("Right End")],
            button([button.flat(button.Neutral), button.md()], [
              text("Right End"),
            ]),
          ),
          tooltip(
            [
              tooltip.solid(tooltip.Neutral),
              tooltip.md(),
              tooltip.bottom_start(True),
            ],
            [text("Bottom Start")],
            button([button.flat(button.Neutral), button.md()], [
              text("Bottom Start"),
            ]),
          ),
          tooltip(
            [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.bottom(True)],
            [text("Bottom")],
            button([button.flat(button.Neutral), button.md()], [text("Bottom")]),
          ),
          tooltip(
            [
              tooltip.solid(tooltip.Neutral),
              tooltip.md(),
              tooltip.bottom_end(True),
            ],
            [text("Bottom End")],
            button([button.flat(button.Neutral), button.md()], [
              text("Bottom End"),
            ]),
          ),
        ]),
      ],
      placement_code(),
    ),
    section.attribute(
      "Arrow",
      "Specify either `True` or `False` for the placement attribute",
      [
        tooltip(
          [
            tooltip.solid(tooltip.Neutral),
            tooltip.md(),
            tooltip.top(arrow: True),
          ],
          [text("With Arrow")],
          button([button.flat(button.Neutral), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [
            tooltip.outlined(tooltip.Neutral),
            tooltip.md(),
            tooltip.top(arrow: True),
          ],
          [text("With Arrow")],
          button([button.flat(button.Neutral), button.md()], [text("Hover me")]),
        ),
        tooltip(
          [
            tooltip.flat(tooltip.Neutral),
            tooltip.md(),
            tooltip.top(arrow: True),
          ],
          [text("With Arrow")],
          button([button.flat(button.Neutral), button.md()], [text("Hover me")]),
        ),
      ],
      arrow_code(),
    ),
  ])
}

fn placement_code() -> String {
  "
import components/ui/button.{button}
import components/ui/tooltip.{tooltip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"grid grid-cols-3 gap-4 w-full [&_button]:w-full\")], [
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.top_start(True)],
      [text(\"Top Start\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Top Start\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.top(True)],
      [text(\"Top\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Top\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.top_end(True)],
      [text(\"Top End\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Top End\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.left_start(True)],
      [text(\"Left Start\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Left Start\")]),
    ),
    div([], []),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.right_start(True)],
      [text(\"Right Start\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Right Start\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.left(True)],
      [text(\"Left\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Left\")]),
    ),
    div([], []),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.right(True)],
      [text(\"Right\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Right\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.left_end(True)],
      [text(\"Left End\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Left End\")]),
    ),
    div([], []),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.right_end(True)],
      [text(\"Right End\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Right End\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.bottom_start(True)],
      [text(\"Bottom Start\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Bottom Start\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.bottom(True)],
      [text(\"Bottom\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Bottom\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.bottom_end(True)],
      [text(\"Bottom End\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Bottom End\")]),
    ),
  ])
}
"
}

fn arrow_code() -> String {
  "
import components/ui/button.{button}
import components/ui/tooltip.{tooltip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"grid grid-cols-3 gap-4 w-full\")], [
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.top(arrow: True)],
      [text(\"With Arrow\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [
        tooltip.outlined(tooltip.Neutral),
        tooltip.md(),
        tooltip.top(arrow: True),
      ],
      [text(\"With Arrow\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.flat(tooltip.Neutral), tooltip.md(), tooltip.top(arrow: True)],
      [text(\"With Arrow\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Hover me\")]),
    ),
  ])
}
"
}

fn size_code() -> String {
  "
import components/ui/button.{button}
import components/ui/tooltip.{tooltip}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"grid grid-cols-3 gap-4 w-full\")], [
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.sm(), tooltip.top(False)],
      [text(\"Small\")],
      button([button.flat(button.Neutral), button.sm()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.md(), tooltip.top(False)],
      [text(\"Medium\")],
      button([button.flat(button.Neutral), button.md()], [text(\"Hover me\")]),
    ),
    tooltip(
      [tooltip.solid(tooltip.Neutral), tooltip.lg(), tooltip.top(False)],
      [text(\"Large\")],
      button([button.flat(button.Neutral), button.lg()], [text(\"Hover me\")]),
    ),
  ])
}
"
}
