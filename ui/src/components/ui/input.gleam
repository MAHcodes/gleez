import gleam/string
import lustre/attribute.{type Attribute, attribute}
import lustre/element.{type Element}
import lustre/element/html

pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}

pub fn input(attributes: List(Attribute(a))) {
  html.input([
    attribute.class(
      ["w-full", "disabled:opacity-50 disabled:cursor-not-allowed"]
      |> string.join(" "),
    ),
    ..attributes
  ])
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "text-neutral placeholder-neutral bg-neutral/20 hover:enabled:bg-neutral/30"
    Primary ->
      "text-primary placeholder-primary bg-primary/20 hover:enabled:bg-primary/30"
    Secondary ->
      "text-secondary placeholder-secondary bg-secondary/20 hover:enabled:bg-secondary/30"
    Success ->
      "text-success placeholder-success bg-success/20 hover:enabled:bg-success/30"
    Info -> "text-info placeholder-info bg-info/20 hover:enabled:bg-info/30"
    Warning ->
      "text-warning placeholder-warning bg-warning/20 hover:enabled:bg-warning/30"
    Danger ->
      "text-danger placeholder-danger bg-danger/20 hover:enabled:bg-danger/30"
  }
  |> attribute.class
}

pub fn outline(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "border-neutral placeholder-neutral text-neutral"
    Primary -> "border-primary placeholder-primary text-primary"
    Secondary -> "border-secondary placeholder-secondary text-secondary"
    Success -> "border-success placeholder-success text-success"
    Info -> "border-info placeholder-info text-info"
    Warning -> "border-warning placeholder-warning text-warning"
    Danger -> "border-danger placeholder-danger text-danger"
  }
  |> string.append(
    " bg-transparent border-2 border-opacity-20 hover:enabled:border-opacity-100 focus:enabled:border-opacity-100",
  )
  |> attribute.class
}

pub fn sm() -> Attribute(a) {
  attribute.class("rounded-sm px-3.5 py-1.5 text-sm")
}

pub fn md() -> Attribute(a) {
  attribute.class("rounded-md px-4 py-2 text-base")
}

pub fn lg() -> Attribute(a) {
  attribute.class("rounded-lg px-5 py-2.5 text-lg")
}
