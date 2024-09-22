import components/ui/button
import components/ui/alert.{alert}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div, text}
import lustre/ui/icon

pub fn demo() -> Element(a) {
  div([class("flex flex-col gap-2 py-2 w-full max-w-xs")], [
    alert.alert(
      [alert.outlined(alert.Warning), alert.md()],
      [icon.exclamation_triangle([class("w-5")]), text("Oops!")],
      [
        div([class("flex flex-col gap-4")], [
          div([], [text("Sorry, something went wrong please try again.")]),
          div([class("flex justify-end gap-2")], [
            button.button([button.solid(button.Warning), button.sm()], [
              icon.reload([class("w-4")]),
              text("Try Again"),
            ]),
            button.button([button.outlined(button.Warning), button.sm()], [
              icon.close([class("w-4")]),
              text("Close"),
            ]),
          ]),
        ]),
      ],
    ),
  ])
}
