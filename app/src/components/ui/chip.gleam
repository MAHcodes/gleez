import gleam/string
import lustre/attribute.{type Attribute, class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}

pub fn chip(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
) -> Element(a) {
  div(
    [
      class(
        "flex gap-2 rounded-full items-center justify-center transition-all",
      ),
      ..attributes
    ],
    children,
  )
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral text-neutral-foreground"
    Primary -> "bg-primary text-primary-foreground"
    Secondary -> "bg-secondary text-secondary-foreground"
    Success -> "bg-success text-success-foreground"
    Info -> "bg-info text-info-foreground"
    Warning -> "bg-warning text-warning-foreground"
    Danger -> "bg-danger text-danger-foreground"
  }
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "outline-neutral text-neutral"
    Primary -> "outline-primary text-primary"
    Secondary -> "outline-secondary text-secondary"
    Success -> "outline-success text-success"
    Info -> "outline-info text-info"
    Warning -> "outline-warning text-warning"
    Danger -> "outline-danger text-danger"
  }
  |> string.append(" outline outline-1")
  |> class
}

pub fn light(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral"
    Primary -> "text-primary"
    Secondary -> "text-secondary"
    Success -> "text-success"
    Info -> "text-info"
    Warning -> "text-warning"
    Danger -> "text-danger"
  }
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral bg-neutral/20"
    Primary -> "text-primary bg-primary/20"
    Secondary -> "text-secondary bg-secondary/20"
    Success -> "text-success bg-success/20"
    Info -> "text-info bg-info/20"
    Warning -> "text-warning bg-warning/20"
    Danger -> "text-danger bg-danger/20"
  }
  |> class
}

pub fn sm() -> Attribute(a) {
  class("px-2 py-1 text-xs")
}

pub fn md() -> Attribute(a) {
  class("px-3 py-1 text-sm")
}

pub fn lg() -> Attribute(a) {
  class("px-4 py-1 text-base")
}

pub fn icon() -> Attribute(a) {
  class("p-1")
}
