import components/snippet.{snippet}
import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, h2, text}

pub fn installation(command: String) -> Element(a) {
  div([], [
    h2([], [text("Installation")]),
    divider([
      class("mb-6"),
      divider.solid(divider.Neutral),
      divider.horizontal(),
      divider.sm(),
    ]),
    snippet(command, "shell"),
  ])
}
