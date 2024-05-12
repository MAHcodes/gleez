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

pub fn a(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
) -> Element(a) {
  html.a(
    [
      class(
        [
          "inline-flex gap-1 items-center justify-center underline-offset-4 transition-all",
          "hover:opacity-80 active:opacity-50 hover:cursor-pointer",
        ]
        |> string.join(" "),
      ),
      ..attributes
    ],
    children,
  )
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
  |> string.append(" hover:opacity-100")
  |> class
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
  |> string.append(" hover:opacity-100")
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

pub fn disabled() -> Attribute(a) {
  class("pointer-events-none opacity-50 select-none")
}

pub type Underline {
  Hover
  Active
  Focus
  Always
}

pub fn underline(u: Underline) -> Attribute(a) {
  case u {
    Hover -> "hover:underline"
    Active -> "active:underline"
    Focus -> "focus:underline"
    Always -> "underline"
  }
  |> class
}
