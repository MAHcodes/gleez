import components/ui/kbd.{kbd}
import lustre/element.{type Element, text}
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "Keys",
      "",
      [
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [
          kbd.command(),
          text("Command"),
        ]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.shift(), text("Shift")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.ctrl(), text("Ctrl")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [
          kbd.option(),
          text("Option"),
        ]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.enter(), text("Enter")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [
          kbd.delete(),
          text("Delete"),
        ]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [
          kbd.escape(),
          text("Escape"),
        ]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.tab(), text("Tab")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [
          kbd.capslock(),
          text("Caps Lock"),
        ]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.up(), text("Up")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.right(), text("Right")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.down(), text("Down")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.left(), text("Left")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [
          kbd.pageup(),
          text("Page Up"),
        ]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [
          kbd.pagedown(),
          text("Page Down"),
        ]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.home(), text("Home")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.end(), text("End")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.help(), text("Help")]),
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.space(), text("Space")]),
      ],
      keys_code(),
    ),
    section.example(
      "Key Combination",
      "",
      [
        kbd([kbd.outlined(kbd.Neutral), kbd.md()], [
          kbd.command(),
          kbd.shift(),
          text("K"),
        ]),
      ],
      key_combination_code(),
    ),
  ])
}

fn keys_code() -> String {
  "
import components/ui/kbd.{kbd}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.command(), text(\"Command\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.shift(), text(\"Shift\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.ctrl(), text(\"Ctrl\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.option(), text(\"Option\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.enter(), text(\"Enter\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.delete(), text(\"Delete\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.escape(), text(\"Escape\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.tab(), text(\"Tab\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.capslock(), text(\"Caps Lock\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.up(), text(\"Up\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.right(), text(\"Right\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.down(), text(\"Down\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.left(), text(\"Left\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.pageup(), text(\"Page Up\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.pagedown(), text(\"Page Down\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.home(), text(\"Home\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.end(), text(\"End\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.help(), text(\"Help\")]),
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [kbd.space(), text(\"Space\")]),
  ])
}
"
}

fn key_combination_code() -> String {
  "
import components/ui/kbd.{kbd}
import lustre/attribute.{class}
import lustre/element.{type Element, text}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    kbd([kbd.outlined(kbd.Neutral), kbd.md()], [
      kbd.command(),
      kbd.shift(),
      text(\"K\"),
    ]),
  ])
}
"
}
