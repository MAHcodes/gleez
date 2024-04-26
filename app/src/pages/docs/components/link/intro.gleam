import components/markdown
import lustre/element.{type Element}

pub fn docs() -> Element(a) {
  "
# Link

Links allow users to click their way from page to page. This component is styled to resemble a hyperlink and semantically renders an `src`

## Installation

```sh
gleam run -m gleez add link
```
"
  |> markdown.from_text
}
