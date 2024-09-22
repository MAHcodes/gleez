import components/ui/radio.{radio}
import lustre/attribute.{checked, disabled}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "Disabled",
      "",
      [
        radio(
          [
            radio.ghost(radio.Neutral),
            radio.md(),
            checked(True),
            disabled(True),
          ],
          [text("Disabled")],
        ),
      ],
      disabled_code(),
    ),
  ])
}

fn disabled_code() -> String {
  "
import components/ui/radio.{radio}
import lustre/attribute.{class, checked, disabled}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    radio(
      [
        radio.ghost(radio.Neutral),
        radio.md(),
        checked(True),
        disabled(True),
      ],
      [text(\"Disabled\")],
    ),
  ])
}
"
}
