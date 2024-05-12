import components/markdown
import components/prose.{prose}
import components/snippet.{snippet}
import components/ui/divider.{divider}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{h1, p}

pub fn docs() -> Element(a) {
  prose([], [
    h1([], [text("Installation")]),
    divider([
      class("mb-6"),
      divider.solid(divider.Neutral),
      divider.horizontal(),
      divider.sm(),
    ]),
    "
As mentioned earlier, this is **NOT** a component library. Instead, it's a collection of reusable components that you can integrate into your apps. 


You can either copy and paste the components directly, or install them using `gleez` cli.
"
      |> markdown.from_text,
    p([], [text("To install the gleez cli:")]),
    snippet("gleam add gleez --dev", "shell"),
  ])
}
