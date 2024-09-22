import components/ui/alert.{alert}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{text}
import lustre/ui/icon
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
        alert.alert(
          [alert.outlined(alert.Neutral), alert.sm()],
          [icon.question_mark_circled([class("w-5")]), text("Small")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.outlined(alert.Neutral), alert.md()],
          [icon.question_mark_circled([class("w-5")]), text("Medium")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.outlined(alert.Neutral), alert.lg()],
          [icon.question_mark_circled([class("w-5")]), text("Large")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
      ],
      size_code(),
    ),
  ])
}

pub fn size_code() -> String {
  "
import components/ui/alert.{alert}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col gap-2 py-2 w-full max-w-xs\")], [
    alert.alert(
      [alert.outlined(alert.Neutral), alert.sm()],
      [icon.question_mark_circled([class(\"w-5\")]), text(\"Small\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.outlined(alert.Neutral), alert.md()],
      [icon.question_mark_circled([class(\"w-5\")]), text(\"Medium\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.outlined(alert.Neutral), alert.lg()],
      [icon.question_mark_circled([class(\"w-5\")]), text(\"Large\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
  ])
}
"
}
