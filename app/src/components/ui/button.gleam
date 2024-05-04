import gleam/string
import lustre/attribute.{type Attribute, class}
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

pub fn button(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
) -> Element(a) {
  html.button(
    [
      class(
        [
          "flex gap-2 items-center justify-center transition-all",
          "active:enabled:scale-[98%] disabled:opacity-50 disabled:cursor-not-allowed",
        ]
        |> string.join(" "),
      ),
      ..attributes
    ],
    children,
  )
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral text-neutral-foreground hover:enabled:bg-neutral/90"
    Primary -> "bg-primary text-primary-foreground hover:enabled:bg-primary/90"
    Secondary ->
      "bg-secondary text-secondary-foreground hover:enabled:bg-secondary/90"
    Success -> "bg-success text-success-foreground hover:enabled:bg-success/90"
    Info -> "bg-info text-info-foreground hover:enabled:bg-info/90"
    Warning -> "bg-warning text-warning-foreground hover:enabled:bg-warning/90"
    Danger -> "bg-danger text-danger-foreground hover:enabled:bg-danger/90"
  }
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "border-neutral text-neutral hover:enabled:bg-neutral/20"
    Primary -> "border-primary text-primary hover:enabled:bg-primary/20"
    Secondary -> "border-secondary text-secondary hover:enabled:bg-secondary/20"
    Success -> "border-success text-success hover:enabled:bg-success/20"
    Info -> "border-info text-info hover:enabled:bg-info/20"
    Warning -> "border-warning text-warning hover:enabled:bg-warning/20"
    Danger -> "border-danger text-danger hover:enabled:bg-danger/20"
  }
  |> string.append(" bg-transparent border-2")
  |> class
}

pub fn light(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral hover:enabled:bg-neutral/20"
    Primary -> "text-primary hover:enabled:bg-primary/20"
    Secondary -> "text-secondary hover:enabled:bg-secondary/20"
    Success -> "text-success hover:enabled:bg-success/20"
    Info -> "text-info hover:enabled:bg-info/20"
    Warning -> "text-warning hover:enabled:bg-warning/20"
    Danger -> "text-danger hover:enabled:bg-danger/20"
  }
  |> string.append(" bg-transparent")
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral bg-neutral/20 hover:enabled:bg-neutral/30"
    Primary -> "text-primary bg-primary/20 hover:enabled:bg-primary/30"
    Secondary -> "text-secondary bg-secondary/20 hover:enabled:bg-secondary/30"
    Success -> "text-success bg-success/20 hover:enabled:bg-success/30"
    Info -> "text-info bg-info/20 hover:enabled:bg-info/30"
    Warning -> "text-warning bg-warning/20 hover:enabled:bg-warning/30"
    Danger -> "text-danger bg-danger/20 hover:enabled:bg-danger/30"
  }
  |> class
}

pub fn ghost(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "border-neutral text-neutral hover:enabled:bg-neutral hover:enabled:text-neutral-foreground"
    Primary ->
      "border-primary text-primary hover:enabled:bg-primary hover:enabled:text-primary-foreground"
    Secondary ->
      "border-secondary text-secondary hover:enabled:bg-secondary hover:enabled:text-secondary-foreground"
    Success ->
      "border-success text-success hover:enabled:bg-success hover:enabled:text-success-foreground"
    Info ->
      "border-info text-info hover:enabled:bg-info hover:enabled:text-info-foreground"
    Warning ->
      "border-warning text-warning hover:enabled:bg-warning hover:enabled:text-warning-foreground"
    Danger ->
      "border-danger text-danger hover:enabled:bg-danger hover:enabled:text-danger-foreground"
  }
  |> string.append(" bg-transparent border-2")
  |> class
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
  |> string.append(" bg-transparent hover:enabled:underline underline-offset-4")
  |> class
}

pub fn sm() -> Attribute(a) {
  class("rounded-sm px-3.5 py-1.5 text-sm")
}

pub fn md() -> Attribute(a) {
  class("rounded-md px-4 py-2 text-base")
}

pub fn lg() -> Attribute(a) {
  class("rounded-lg px-5 py-2.5 text-lg")
}

pub fn icon() -> Attribute(a) {
  class("rounded-md p-2")
}
