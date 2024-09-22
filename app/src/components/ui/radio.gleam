import gleam/string
import lustre/attribute.{type Attribute, class, type_}
import lustre/element.{type Element}
import lustre/element/html.{input, label, span}

pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}

pub fn radio(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
) -> Element(a) {
  label([class("inline-flex items-center gap-2")], [
    input([
      type_("radio"),
      class(
        [
          "inline-flex items-center justify-center p-0.5 appearance-none transition-all rounded-full",
          "enabled:cursor-pointer disabled:cursor-not-allowed disabled:opacity-50",
          "[&:disabled+span]:opacity-50 [&:enabled+span]:cursor-pointer [&:disabled+span]:cursor-not-allowed",
          "ring-2 ring-offset-2",
        ]
        |> string.join(" "),
      ),
      ..attributes
    ]),
    span([], children),
  ])
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "ring-offset-neutral bg-neutral-foreground checked:bg-neutral"
    Primary -> "ring-offset-primary bg-primary-foreground checked:bg-primary"
    Secondary ->
      "ring-offset-secondary bg-secondary-foreground checked:bg-secondary"
    Success -> "ring-offset-success bg-success-foreground checked:bg-success"
    Info -> "ring-offset-info bg-info-foreground checked:bg-info"
    Warning -> "ring-offset-warning bg-warning-foreground checked:bg-warning"
    Danger -> "ring-offset-danger bg-danger-foreground checked:bg-danger"
  }
  |> string.append(" ring-transparent")
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "ring-offset-neutral-foreground ring-neutral bg-neutral-foreground checked:bg-neutral-foreground checked:ring-offset-neutral"
    Primary ->
      "ring-offset-primary-foreground ring-primary bg-primary-foreground checked:bg-primary-foreground checked:ring-offset-primary"
    Secondary ->
      "ring-offset-secondary-foreground ring-secondary bg-secondary-foreground checked:bg-secondary-foreground checked:ring-offset-secondary"
    Success ->
      "ring-offset-success-foreground ring-success bg-success-foreground checked:bg-success-foreground checked:ring-offset-success"
    Info ->
      "ring-offset-info-foreground ring-info bg-info-foreground checked:bg-info-foreground checked:ring-offset-info"
    Warning ->
      "ring-offset-warning-foreground ring-warning bg-warning-foreground checked:bg-warning-foreground checked:ring-offset-warning"
    Danger ->
      "ring-offset-danger-foreground ring-danger bg-danger-foreground checked:bg-danger-foreground checked:ring-offset-danger"
  }
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "ring-neutral/20 bg-neutral/20 checked:bg-neutral"
    Primary -> "ring-primary/20 bg-primary/20 checked:bg-primary"
    Secondary -> "ring-secondary/20 bg-secondary/20 checked:bg-secondary"
    Success -> "ring-success/20 bg-success/20 checked:bg-success"
    Info -> "ring-info/20 bg-info/20 checked:bg-info"
    Warning -> "ring-warning/20 bg-warning/20 checked:bg-warning"
    Danger -> "ring-danger/20 bg-danger/20 checked:bg-danger"
  }
  |> string.append(" ring-offset-transparent")
  |> class
}

pub fn ghost(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "ring-offset-neutral-foreground ring-neutral bg-neutral-foreground checked:bg-neutral"
    Primary ->
      "ring-offset-primary-foreground ring-primary bg-primary-foreground checked:bg-primary"
    Secondary ->
      "ring-offset-secondary-foreground ring-secondary bg-secondary-foreground checked:bg-secondary"
    Success ->
      "ring-offset-success-foreground ring-success bg-success-foreground checked:bg-success"
    Info ->
      "ring-offset-info-foreground ring-info bg-info-foreground checked:bg-info"
    Warning ->
      "ring-offset-warning-foreground ring-warning bg-warning-foreground checked:bg-warning"
    Danger ->
      "ring-offset-danger-foreground ring-danger bg-danger-foreground checked:bg-danger"
  }
  |> class
}

pub fn sm() -> Attribute(a) {
  class("w-1 h-1 m-1 text-sm [&+span]:text-sm")
}

pub fn md() -> Attribute(a) {
  class("w-2 h-2 m-1 text-base [&+span]:text-base")
}

pub fn lg() -> Attribute(a) {
  class("w-3 h-3 m-1 text-lg [&+span]:text-lg")
}
