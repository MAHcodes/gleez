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

pub fn spinner(attributes: List(Attribute(a))) -> Element(a) {
  div([class("animate-spin rounded-full"), ..attributes], [])
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "border-neutral border-t-neutral-foreground"
    Primary -> "border-primary border-t-primary-foreground"
    Secondary -> "border-secondary border-t-secondary-foreground"
    Success -> "border-success border-t-success-foreground"
    Info -> "border-info border-t-info-foreground"
    Warning -> "border-warning border-t-warning-foreground"
    Danger -> "border-danger border-t-danger-foreground"
  }
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "border-neutral/20 border-t-neutral"
    Primary -> "border-primary/20 border-t-primary"
    Secondary -> "border-secondary/20 border-t-secondary"
    Success -> "border-success/20 border-t-success"
    Info -> "border-info/20 border-t-info"
    Warning -> "border-warning/20 border-t-warning"
    Danger -> "border-danger/20 border-t-danger"
  }
  |> class
}

pub fn light(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "border-t-neutral"
    Primary -> "border-t-primary"
    Secondary -> "border-t-secondary"
    Success -> "border-t-success"
    Info -> "border-t-info"
    Warning -> "border-t-warning"
    Danger -> "border-t-danger"
  }
  |> string.append(" border-transparent")
  |> class
}

pub fn sm() -> Attribute(a) {
  class("w-8 h-8 border-2")
}

pub fn md() -> Attribute(a) {
  class("w-10 h-10 border-4")
}

pub fn lg() -> Attribute(a) {
  class("w-12 h-12 border-[6px]")
}
