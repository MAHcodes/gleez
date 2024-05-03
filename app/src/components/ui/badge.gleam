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

pub fn badge(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
  element: Element(a),
) -> Element(a) {
  div([class("relative")], [
    element,
    div(
      [
        [
          "absolute rounded-full z-10 select-none font-bold",
          "flex items-center justify-center border-2",
        ]
          |> string.join(" ")
          |> class,
        ..attributes
      ],
      children,
    ),
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
  |> string.append(" border-background")
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "border-neutral text-neutral bg-neutral-foreground"
    Primary -> "border-primary text-primary bg-primary-foreground"
    Secondary -> "border-secondary text-secondary bg-secondary-foreground"
    Success -> "border-success text-success bg-success-foreground"
    Info -> "border-info text-info bg-info-foreground"
    Warning -> "border-warning text-warning bg-warning-foreground"
    Danger -> "border-danger text-danger bg-danger-foreground"
  }
  |> class
}

pub fn top_left() -> Attribute(a) {
  class("top-0 left-0 -translate-x-1/3 -translate-y-1/3")
}

pub fn top_right() -> Attribute(a) {
  class("top-0 right-0 translate-x-1/3 -translate-y-1/3")
}

pub fn bottom_left() -> Attribute(a) {
  class("bottom-0 left-0 -translate-x-1/3 translate-y-1/3")
}

pub fn bottom_right() -> Attribute(a) {
  class("bottom-0 right-0 translate-x-1/3 translate-y-1/3")
}

pub fn sm() -> Attribute(a) {
  class("px-1 text-xs")
}

pub fn md() -> Attribute(a) {
  class("px-1.5 text-sm")
}

pub fn lg() -> Attribute(a) {
  class("px-2 text-base")
}

pub fn dot() -> Attribute(a) {
  class("aspect-square")
}
