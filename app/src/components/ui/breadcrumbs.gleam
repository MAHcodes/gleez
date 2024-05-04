import gleam/list
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

pub fn breadcrumbs(
  attributes: List(Attribute(a)),
  separator: Element(a),
  children: List(Element(a)),
) -> Element(a) {
  div(
    [class("inline-flex items-center gap-2"), ..attributes],
    list.intersperse(children, separator),
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
  |> string.append(" px-3 py-1")
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "outline-neutral text-neutral bg-neutral-foreground"
    Primary -> "outline-primary text-primary bg-primary-foreground"
    Secondary -> "outline-secondary text-secondary bg-secondary-foreground"
    Success -> "outline-success text-success bg-success-foreground"
    Info -> "outline-info text-info bg-info-foreground"
    Warning -> "outline-warning text-warning bg-warning-foreground"
    Danger -> "outline-danger text-danger bg-danger-foreground"
  }
  |> string.append(" outline outline-2 px-3 py-1")
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral/20 text-neutral"
    Primary -> "bg-primary/20 text-primary"
    Secondary -> "bg-secondary/20 text-secondary"
    Success -> "bg-success/20 text-success"
    Info -> "bg-info/20 text-info"
    Warning -> "bg-warning/20 text-warning"
    Danger -> "bg-danger/20 text-danger"
  }
  |> string.append(" px-3 py-1")
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

pub fn sm() -> Attribute(a) {
  class("rounded-sm text-xs")
}

pub fn md() -> Attribute(a) {
  class("rounded-md text-sm")
}

pub fn lg() -> Attribute(a) {
  class("rounded-lg text-base")
}
