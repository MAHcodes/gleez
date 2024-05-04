import gleam/string
import lustre/attribute.{type Attribute, class, type_}
import lustre/element.{type Element}
import lustre/element/html.{div, input, label}

pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}

pub fn switch(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
) -> Element(a) {
  label(
    [
      class(
        "inline-flex items-center gap-4 cursor-pointer has-[:disabled]:cursor-not-allowed has-[:disabled]:opacity-50",
      ),
    ],
    [
      input([type_("checkbox"), class("sr-only peer"), ..attributes]),
      div(
        [
          class(
            [
              "relative rounded-full",
              "peer-checked:after:translate-x-full rtl:peer-checked:after:-translate-x-full",
              "after:absolute after:top-0.5 after:start-0.5 after:rounded-full after:transition-all",
            ]
            |> string.join(" "),
          ),
        ],
        [],
      ),
      ..children
    ],
  )
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "[&:checked+div]:bg-neutral [&:checked+div]:after:bg-neutral-foreground"
    Primary ->
      "[&:checked+div]:bg-primary [&:checked+div]:after:bg-primary-foreground"
    Secondary ->
      "[&:checked+div]:bg-secondary [&:checked+div]:after:bg-secondary-foreground"
    Success ->
      "[&:checked+div]:bg-success [&:checked+div]:after:bg-success-foreground"
    Info -> "[&:checked+div]:bg-info [&:checked+div]:after:bg-info-foreground"
    Warning ->
      "[&:checked+div]:bg-warning [&:checked+div]:after:bg-warning-foreground"
    Danger ->
      "[&:checked+div]:bg-danger [&:checked+div]:after:bg-danger-foreground"
  }
  |> string.append(" [&+div]:bg-neutral [&+div]:after:bg-neutral-foreground")
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "[&:checked+div]:outline-neutral [&:checked+div]:after:bg-neutral"
    Primary ->
      "[&:checked+div]:outline-primary [&:checked+div]:after:bg-primary"
    Secondary ->
      "[&:checked+div]:outline-secondary [&:checked+div]:after:bg-secondary"
    Success ->
      "[&:checked+div]:outline-success [&:checked+div]:after:bg-success"
    Info -> "[&:checked+div]:outline-info [&:checked+div]:after:bg-info"
    Warning ->
      "[&:checked+div]:outline-warning [&:checked+div]:after:bg-warning"
    Danger -> "[&:checked+div]:outline-danger [&:checked+div]:after:bg-danger"
  }
  |> string.append(
    " [&+div]:outline [&+div]:outline-2 [&+div]:outline-neutral [&+div]:bg-neutral-foreground [&+div]:after:bg-neutral",
  )
  |> class
}

pub fn ghost(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "[&:checked+div]:ring-neutral [&:checked+div]:bg-neutral [&:checked+div]:after:bg-neutral-foreground"
    Primary ->
      "[&:checked+div]:ring-primary [&:checked+div]:bg-primary [&:checked+div]:after:bg-primary-foreground"
    Secondary ->
      "[&:checked+div]:ring-secondary [&:checked+div]:bg-secondary [&:checked+div]:after:bg-secondary-foreground"
    Success ->
      "[&:checked+div]:ring-success [&:checked+div]:bg-success [&:checked+div]:after:bg-success-foreground"
    Info ->
      "[&:checked+div]:ring-info [&:checked+div]:bg-info [&:checked+div]:after:bg-info-foreground"
    Warning ->
      "[&:checked+div]:ring-warning [&:checked+div]:bg-warning [&:checked+div]:after:bg-warning-foreground"
    Danger ->
      "[&:checked+div]:ring-danger [&:checked+div]:bg-danger [&:checked+div]:after:bg-danger-foreground"
  }
  |> string.append(
    " [&+div]:ring [&+div]:ring-2 [&+div]:ring-neutral [&+div]:bg-neutral-foreground [&+div]:after:bg-neutral [&+div]:after:bg-neutral",
  )
  |> class
}

pub fn sm() -> Attribute(a) {
  class(
    "[&+div]:text-sm [&+div]:w-9 [&+div]:h-5 [&+div]:after:h-4 [&+div]:after:w-4 [&:enabled+div]:hover:after:w-5 [&:checked:enabled+div]:hover:after:w-4",
  )
}

pub fn md() -> Attribute(a) {
  class(
    "[&+div]:text-md [&+div]:w-11 [&+div]:h-6 [&+div]:after:h-5 [&+div]:after:w-5 [&:enabled+div]:hover:after:w-6 [&:checked:enabled+div]:hover:after:w-5",
  )
}

pub fn lg() -> Attribute(a) {
  class(
    "[&+div]:text-lg [&+div]:w-[3.25rem] [&+div]:h-7 [&+div]:after:h-6 [&+div]:after:w-6 [&:enabled+div]:hover:after:w-7 [&:checked:enabled+div]:hover:after:w-6",
  )
}
