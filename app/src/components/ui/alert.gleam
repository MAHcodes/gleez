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

pub fn alert(
  attributes: List(Attribute(a)),
  header: List(Element(a)),
  children: List(Element(a)),
) -> Element(a) {
  div([class("flex flex-col w-full"), ..attributes], [
    div([class("flex items-center gap-2 font-bold")], header),
    div([], children),
  ])
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
    Neutral -> "border-neutral [&>div:first-child]:text-neutral bg-neutral-foreground"
    Primary -> "border-primary [&>div:first-child]:text-primary bg-primary-foreground"
    Secondary -> "border-secondary [&>div:first-child]:text-secondary bg-secondary-foreground"
    Success -> "border-success [&>div:first-child]:text-success bg-success-foreground"
    Info -> "border-info [&>div:first-child]:text-info bg-info-foreground"
    Warning -> "border-warning [&>div:first-child]:text-warning bg-warning-foreground"
    Danger -> "border-danger [&>div:first-child]:text-danger bg-danger-foreground"
  }
  |> string.append(" border-2")
  |> class
}

pub fn light(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "[&>div:first-child]:text-neutral border-neutral bg-neutral-foreground"
    Primary -> "[&>div:first-child]:text-primary border-primary bg-primary-foreground"
    Secondary -> "[&>div:first-child]:text-secondary border-secondary bg-secondary-foreground"
    Success -> "[&>div:first-child]:text-success border-success bg-success-foreground"
    Info -> "[&>div:first-child]:text-info border-info bg-info-foreground"
    Warning -> "[&>div:first-child]:text-warning border-warning bg-warning-foreground"
    Danger -> "[&>div:first-child]:text-danger border-danger bg-danger-foreground"
  }
  |> string.append(" border-l-2")
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral/20 [&>div:first-child]:text-neutral"
    Primary -> "bg-primary/20 [&>div:first-child]:text-primary"
    Secondary -> "bg-secondary/20 [&>div:first-child]:text-secondary"
    Success -> "bg-success/20 [&>div:first-child]:text-success"
    Info -> "bg-info/20 [&>div:first-child]:text-info"
    Warning -> "bg-warning/20 [&>div:first-child]:text-warning"
    Danger -> "bg-danger/20 [&>div:first-child]:text-danger"
  }
  |> class
}

pub fn sm() -> Attribute(a) {
  class("gap-0.5 p-3 rounded-sm text-sm")
}

pub fn md() -> Attribute(a) {
  class("gap-1 p-3.5 rounded-md text-base")
}

pub fn lg() -> Attribute(a) {
  class("gap-1.5 p-4 rounded-lg text-lg")
}
