import gleam/string
import lustre/attribute.{type Attribute, attribute}
import lustre/element.{type Element}
import lustre/element/html

pub fn button(attributes: List(Attribute(a)), children: List(Element(a))) {
  html.button(
    [
      attribute.class(
        "active:scale-[98%] transition-all font-bold",
      ),
      ..attributes
    ],
    children,
  )
}

pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral text-neutral-foreground hover:bg-neutral/90"
    Primary -> "bg-primary text-primary-foreground hover:bg-primary/90"
    Secondary -> "bg-secondary text-secondary-foreground hover:bg-secondary/90"
    Success -> "bg-success text-success-foreground hover:bg-success/90"
    Info -> "bg-info text-info-foreground hover:bg-info/90"
    Warning -> "bg-warning text-warning-foreground hover:bg-warning/90"
    Danger -> "bg-danger text-danger-foreground hover:bg-danger/90"
  }
  |> attribute.class
}

pub fn outline(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "border-neutral text-neutral hover:bg-neutral/20"
    Primary -> "border-primary text-primary hover:bg-primary/20"
    Secondary -> "border-secondary text-secondary hover:bg-secondary/20"
    Success -> "border-success text-success hover:bg-success/20"
    Info -> "border-info text-info hover:bg-info/20"
    Warning -> "border-warning text-warning hover:bg-warning/20"
    Danger -> "border-danger text-danger hover:bg-danger/20"
  }
  |> string.append(" bg-transparent border-2")
  |> attribute.class
}

pub fn light(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral hover:bg-neutral/20"
    Primary -> "text-primary hover:bg-primary/20"
    Secondary -> "text-secondary hover:bg-secondary/20"
    Success -> "text-success hover:bg-success/20"
    Info -> "text-info hover:bg-info/20"
    Warning -> "text-warning hover:bg-warning/20"
    Danger -> "text-danger hover:bg-danger/20"
  }
  |> string.append(" bg-transparent")
  |> attribute.class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral bg-neutral/20 hover:bg-neutral/30"
    Primary -> "text-primary bg-primary/20 hover:bg-primary/30"
    Secondary -> "text-secondary bg-secondary/20 hover:bg-secondary/30"
    Success -> "text-success bg-success/20 hover:bg-success/30"
    Info -> "text-info bg-info/20 hover:bg-info/30"
    Warning -> "text-warning bg-warning/20 hover:bg-warning/30"
    Danger -> "text-danger bg-danger/20 hover:bg-danger/30"
  }
  |> attribute.class
}

pub fn ghost(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "border-neutral text-neutral hover:bg-neutral hover:text-neutral-foreground"
    Primary ->
      "border-primary text-primary hover:bg-primary hover:text-primary-foreground"
    Secondary ->
      "border-secondary text-secondary hover:bg-secondary hover:text-secondary-foreground"
    Success ->
      "border-success text-success hover:bg-success hover:text-success-foreground"
    Info -> "border-info text-info hover:bg-info hover:text-info-foreground"
    Warning ->
      "border-warning text-warning hover:bg-warning hover:text-warning-foreground"
    Danger ->
      "border-danger text-danger hover:bg-danger hover:text-danger-foreground"
  }
  |> string.append(" bg-transparent border-2")
  |> attribute.class
}

pub fn link(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral"
    Primary -> "text-primary"
    Secondary -> "text-secondary"
    Success -> "text-success"
    Info -> "text-info"
    Warning -> "text-warning"
    Danger -> "text-danger"
  }
  |> string.append(" bg-transparent hover:underline underline-offset-4")
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
