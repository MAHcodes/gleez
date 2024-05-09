import components/ui/checkbox.{checkbox}
import lustre/attribute.{checked, disabled}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "Disabled",
      "",
      [
        checkbox(
          [
            checkbox.solid(checkbox.Neutral),
            checkbox.md(),
            checked(True),
            disabled(True),
          ],
          [text("Disabled")],
        ),
      ],
      with_icons_code(),
    ),
  ])
}

fn with_icons_code() -> String {
  "
import components/ui/checkbox.{checkbox}
import lustre/attribute.{checked, class, disabled}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    checkbox(
      [
        checkbox.solid(checkbox.Neutral),
        checkbox.md(),
        checked(True),
        disabled(True),
      ],
      [text(\"Disabled\")],
    ),
  ])
}
"
}
