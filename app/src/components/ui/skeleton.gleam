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

pub fn skeleton(attributes: List(Attribute(a))) -> Element(a) {
  div([class("animate-pulse"), ..attributes], [])
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral/50"
    Primary -> "bg-primary/50"
    Secondary -> "bg-secondary/50"
    Success -> "bg-success/50"
    Info -> "bg-info/50"
    Warning -> "bg-warning/50"
    Danger -> "bg-danger/50"
  }
  |> class
}
