import gleam/string
import lustre/attribute.{type Attribute, class, role}
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

pub fn divider(attributes: List(Attribute(a))) -> Element(a) {
  div(
    [
      role("separator"),
      class("shrink-0 self-stretch bg-opacity-35"),
      ..attributes
    ],
    [],
  )
}

pub fn solid(color: Colors) -> Attribute(a) {
  color
  |> paint
  |> string.append(" border-solid")
  |> class
}

pub fn dashed(color: Colors) -> Attribute(a) {
  color
  |> paint
  |> string.append(" border-dashed")
  |> class
}

pub fn dotted(color: Colors) -> Attribute(a) {
  color
  |> paint
  |> string.append(" border-dotted")
  |> class
}

pub fn vertical() -> Attribute(a) {
  class("h-full w-0 border-y-0 border-l-0")
}

pub fn horizontal() -> Attribute(a) {
  class("w-full h-0 border-x-0 border-t-0")
}

pub fn sm() -> Attribute(a) {
  class("border")
}

pub fn md() -> Attribute(a) {
  class("border-2")
}

pub fn lg() -> Attribute(a) {
  class("border-4")
}

fn paint(color: Colors) -> String {
  case color {
    Neutral -> "border-neutral"
    Primary -> "border-primary"
    Secondary -> "border-secondary"
    Success -> "border-success"
    Info -> "border-info"
    Warning -> "border-warning"
    Danger -> "border-danger"
  }
}
