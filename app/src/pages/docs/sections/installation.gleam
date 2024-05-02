import components/snippet.{snippet}
import lustre/element.{type Element}
import lustre/element/html.{div, h2, text}

pub fn installation(command: String) -> Element(a) {
  div([], [h2([], [text("Installation")]), snippet(command, "shell")])
}
