import components/ui/skeleton.{skeleton}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "Card",
      "",
      [
        div(
          [
            class(
              "flex flex-col items-center gap-4 bg-neutral-foreground p-4 rounded-md w-full max-w-xs",
            ),
          ],
          [
            skeleton([
              class("w-full aspect-video rounded-md"),
              skeleton.solid(skeleton.Neutral),
            ]),
            div([class("flex items-center w-full gap-4")], [
              skeleton([
                class("w-12 h-12 rounded-full"),
                skeleton.solid(skeleton.Neutral),
              ]),
              div([class("flex flex-col flex-1 gap-2")], [
                skeleton([
                  class("w-full h-4 rounded"),
                  skeleton.solid(skeleton.Neutral),
                ]),
                skeleton([
                  class("w-2/3 h-4 rounded"),
                  skeleton.solid(skeleton.Neutral),
                ]),
              ]),
            ]),
          ],
        ),
      ],
      card_code(),
    ),
  ])
}

fn card_code() -> String {
  "
import components/ui/skeleton.{skeleton}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div(
    [
      class(
        \"flex flex-col items-center gap-4 bg-neutral-foreground p-4 rounded-md max-w-xs\",
      ),
    ],
    [
      skeleton([
        class(\"w-full aspect-video rounded-md\"),
        skeleton.solid(skeleton.Neutral),
      ]),
      div([class(\"flex items-center w-full gap-4\")], [
        skeleton([
          class(\"w-12 h-12 rounded-full\"),
          skeleton.solid(skeleton.Neutral),
        ]),
        div([class(\"flex flex-col flex-1 gap-2\")], [
          skeleton([
            class(\"w-full h-4 rounded\"),
            skeleton.solid(skeleton.Neutral),
          ]),
          skeleton([
            class(\"w-2/3 h-4 rounded\"),
            skeleton.solid(skeleton.Neutral),
          ]),
        ]),
      ]),
    ],
  )
}
"
}
