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
    _ -> ""
  }
  |> string.append(" px-3 py-1")
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral/20 text-neutral"
    Primary -> "bg-primary/20 text-primary"
    _ -> ""
  }
  |> string.append(" px-3 py-1")
  |> class
}

pub fn light(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral"
    Primary -> "text-primary"
    _ -> ""
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
