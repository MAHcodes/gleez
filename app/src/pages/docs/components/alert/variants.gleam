import components/ui/alert
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{text}
import lustre/ui/icon
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        alert.alert(
          [alert.solid(alert.Neutral), alert.md()],
          [icon.question_mark_circled([class("w-5")]), text("Neutral")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.solid(alert.Primary), alert.md()],
          [icon.star([class("w-5")]), text("Primary")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.solid(alert.Secondary), alert.md()],
          [icon.star([class("w-5")]), text("Secondary")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.solid(alert.Success), alert.md()],
          [icon.check_circled([class("w-5")]), text("Success")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.solid(alert.Info), alert.md()],
          [icon.info_circled([class("w-5")]), text("Info")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.solid(alert.Warning), alert.md()],
          [icon.exclamation_triangle([class("w-5")]), text("Warning")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.solid(alert.Danger), alert.md()],
          [icon.exclamation_triangle([class("w-5")]), text("Danger")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
      ],
      solid_code(),
    ),
    section.variant(
      "Outlined",
      "",
      [
        alert.alert(
          [alert.outlined(alert.Neutral), alert.md()],
          [icon.question_mark_circled([class("w-5")]), text("Neutral")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.outlined(alert.Primary), alert.md()],
          [icon.star([class("w-5")]), text("Primary")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.outlined(alert.Secondary), alert.md()],
          [icon.star([class("w-5")]), text("Secondary")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.outlined(alert.Success), alert.md()],
          [icon.check_circled([class("w-5")]), text("Success")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.outlined(alert.Info), alert.md()],
          [icon.info_circled([class("w-5")]), text("Info")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.outlined(alert.Warning), alert.md()],
          [icon.exclamation_triangle([class("w-5")]), text("Warning")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.outlined(alert.Danger), alert.md()],
          [icon.exclamation_triangle([class("w-5")]), text("Danger")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
      ],
      outlined_code(),
    ),
    section.variant(
      "Light",
      "",
      [
        alert.alert(
          [alert.light(alert.Neutral), alert.md()],
          [icon.question_mark_circled([class("w-5")]), text("Neutral")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.light(alert.Primary), alert.md()],
          [icon.star([class("w-5")]), text("Primary")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.light(alert.Secondary), alert.md()],
          [icon.star([class("w-5")]), text("Secondary")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.light(alert.Success), alert.md()],
          [icon.check_circled([class("w-5")]), text("Success")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.light(alert.Info), alert.md()],
          [icon.info_circled([class("w-5")]), text("Info")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.light(alert.Warning), alert.md()],
          [icon.exclamation_triangle([class("w-5")]), text("Warning")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.light(alert.Danger), alert.md()],
          [icon.exclamation_triangle([class("w-5")]), text("Danger")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
      ],
      light_code(),
    ),
    section.variant(
      "Flat",
      "",
      [
        alert.alert(
          [alert.flat(alert.Neutral), alert.md()],
          [icon.question_mark_circled([class("w-5")]), text("Neutral")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.flat(alert.Primary), alert.md()],
          [icon.star([class("w-5")]), text("Primary")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.flat(alert.Secondary), alert.md()],
          [icon.star([class("w-5")]), text("Secondary")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.flat(alert.Success), alert.md()],
          [icon.check_circled([class("w-5")]), text("Success")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.flat(alert.Info), alert.md()],
          [icon.info_circled([class("w-5")]), text("Info")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.flat(alert.Warning), alert.md()],
          [icon.exclamation_triangle([class("w-5")]), text("Warning")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
        alert.alert(
          [alert.flat(alert.Danger), alert.md()],
          [icon.exclamation_triangle([class("w-5")]), text("Danger")],
          [text("Lorem, ipsum dolor sit amet consectetur adipisicing elit.")],
        ),
      ],
      flat_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/alert.{alert}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col gap-2 py-2 w-full max-w-xs\")], [
    alert.alert(
      [alert.solid(alert.Neutral), alert.md()],
      [icon.question_mark_circled([class(\"w-5\")]), text(\"Neutral\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.solid(alert.Primary), alert.md()],
      [icon.star([class(\"w-5\")]), text(\"Primary\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.solid(alert.Secondary), alert.md()],
      [icon.star([class(\"w-5\")]), text(\"Secondary\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.solid(alert.Success), alert.md()],
      [icon.check_circled([class(\"w-5\")]), text(\"Success\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.solid(alert.Info), alert.md()],
      [icon.info_circled([class(\"w-5\")]), text(\"Info\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.solid(alert.Warning), alert.md()],
      [icon.exclamation_triangle([class(\"w-5\")]), text(\"Warning\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.solid(alert.Danger), alert.md()],
      [icon.exclamation_triangle([class(\"w-5\")]), text(\"Danger\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
  ])
}
"
}

fn outlined_code() -> String {
  "
import components/ui/alert.{alert}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col gap-2 py-2 w-full max-w-xs\")], [
    alert.alert(
      [alert.outlined(alert.Neutral), alert.md()],
      [icon.question_mark_circled([class(\"w-5\")]), text(\"Neutral\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.outlined(alert.Primary), alert.md()],
      [icon.star([class(\"w-5\")]), text(\"Primary\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.outlined(alert.Secondary), alert.md()],
      [icon.star([class(\"w-5\")]), text(\"Secondary\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.outlined(alert.Success), alert.md()],
      [icon.check_circled([class(\"w-5\")]), text(\"Success\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.outlined(alert.Info), alert.md()],
      [icon.info_circled([class(\"w-5\")]), text(\"Info\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.outlined(alert.Warning), alert.md()],
      [icon.exclamation_triangle([class(\"w-5\")]), text(\"Warning\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.outlined(alert.Danger), alert.md()],
      [icon.exclamation_triangle([class(\"w-5\")]), text(\"Danger\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
  ])
}
"
}

fn light_code() -> String {
  "
import components/ui/alert.{alert}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col gap-2 py-2 w-full max-w-xs\")], [
    alert.alert(
      [alert.light(alert.Neutral), alert.md()],
      [icon.question_mark_circled([class(\"w-5\")]), text(\"Neutral\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.light(alert.Primary), alert.md()],
      [icon.star([class(\"w-5\")]), text(\"Primary\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.light(alert.Secondary), alert.md()],
      [icon.star([class(\"w-5\")]), text(\"Secondary\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.light(alert.Success), alert.md()],
      [icon.check_circled([class(\"w-5\")]), text(\"Success\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.light(alert.Info), alert.md()],
      [icon.info_circled([class(\"w-5\")]), text(\"Info\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.light(alert.Warning), alert.md()],
      [icon.exclamation_triangle([class(\"w-5\")]), text(\"Warning\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.light(alert.Danger), alert.md()],
      [icon.exclamation_triangle([class(\"w-5\")]), text(\"Danger\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
  ])
}
"
}

fn flat_code() -> String {
  "
import components/ui/alert.{alert}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class(\"flex flex-col gap-2 py-2 w-full max-w-xs\")], [
    alert.alert(
      [alert.flat(alert.Neutral), alert.md()],
      [icon.question_mark_circled([class(\"w-5\")]), text(\"Neutral\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.flat(alert.Primary), alert.md()],
      [icon.star([class(\"w-5\")]), text(\"Primary\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.flat(alert.Secondary), alert.md()],
      [icon.star([class(\"w-5\")]), text(\"Secondary\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.flat(alert.Success), alert.md()],
      [icon.check_circled([class(\"w-5\")]), text(\"Success\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.flat(alert.Info), alert.md()],
      [icon.info_circled([class(\"w-5\")]), text(\"Info\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.flat(alert.Warning), alert.md()],
      [icon.exclamation_triangle([class(\"w-5\")]), text(\"Warning\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
    alert.alert(
      [alert.flat(alert.Danger), alert.md()],
      [icon.exclamation_triangle([class(\"w-5\")]), text(\"Danger\")],
      [text(\"Lorem, ipsum dolor sit amet consectetur adipisicing elit.\")],
    ),
  ])
}
"
}
