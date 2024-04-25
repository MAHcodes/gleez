import components/markdown
import lustre/element.{type Element}

pub fn docs() -> Element(a) {
  "
# Button

Buttons
"
  |> markdown.from_text
}
