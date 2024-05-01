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
      class("shrink-0 border-none self-stretch bg-opacity-30"),
      ..attributes
    ],
    [],
  )
}

pub fn vertical(color: Colors) -> Attribute(a) {
  color
  |> paint
  |> string.append(" h-full w-[1px]")
  |> class
}

pub fn horizontal(color: Colors) -> Attribute(a) {
  color
  |> paint
  |> string.append(" w-full h-[1px]")
  |> class
}

fn paint(color: Colors) -> String {
  case color {
    Neutral -> "bg-neutral"
    Primary -> "bg-primary"
    Secondary -> "bg-secondary"
    Success -> "bg-success"
    Info -> "bg-info"
    Warning -> "bg-warning"
    Danger -> "bg-danger"
  }
}
