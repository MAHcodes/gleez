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

pub fn input(attributes: List(Attribute(a))) -> Element(a) {
  html.input([
    class(
      ["disabled:opacity-50 disabled:cursor-not-allowed", "transition-all"]
      |> string.join(" "),
    ),
    ..attributes
  ])
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "text-neutral placeholder-neutral bg-neutral/20 hover:enabled:bg-neutral/30"
    Primary ->
      "text-primary placeholder-primary bg-primary/20 hover:enabled:bg-primary/30"
    Secondary ->
      "text-secondary placeholder-secondary bg-secondary/20 hover:enabled:bg-secondary/30"
    Success ->
      "text-success placeholder-success bg-success/20 hover:enabled:bg-success/30"
    Info -> "text-info placeholder-info bg-info/20 hover:enabled:bg-info/30"
    Warning ->
      "text-warning placeholder-warning bg-warning/20 hover:enabled:bg-warning/30"
    Danger ->
      "text-danger placeholder-danger bg-danger/20 hover:enabled:bg-danger/30"
  }
  |> string.append(" focus:outline-none focus:ring-2 focus:ring-current")
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "border-neutral focus:enabled:border-neutral hover:enabled:border-neutral text-neutral"
    Primary ->
      "border-primary focus:enabled:border-primary hover:enabled:border-primary text-primary"
    Secondary ->
      "border-secondary focus:enabled:border-secondary hover:enabled:border-secondary text-secondary"
    Success ->
      "border-success focus:enabled:border-success hover:enabled:border-success text-success"
    Info ->
      "border-info focus:enabled:border-info hover:enabled:border-info text-info"
    Warning ->
      "border-warning focus:enabled:border-warning hover:enabled:border-warning text-warning"
    Danger ->
      "border-danger focus:enabled:border-danger hover:enabled:border-danger text-danger"
  }
  |> string.append(
    [
      " bg-transparent border-2 border-opacity-50 placeholder-opacity-70",
      "hover:enabled:border-opacity-100 focus:enabled:border-opacity-100",
      "focus:outline-none focus:ring-2 focus:ring-current",
    ]
    |> string.join(" "),
  )
  |> class
}

pub fn light(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral placeholder-neutral text-neutral"
    Primary -> "bg-primary placeholder-primary text-primary"
    Secondary -> "bg-secondary placeholder-secondary text-secondary"
    Success -> "bg-success placeholder-success text-success"
    Info -> "bg-info placeholder-info text-info"
    Warning -> "bg-warning placeholder-warning text-warning"
    Danger -> "bg-danger placeholder-danger text-danger"
  }
  |> string.append(
    [
      " bg-opacity-0 outline-none",
      "hover:enabled:bg-opacity-20 focus:enabled:bg-opacity-30",
    ]
    |> string.join(" "),
  )
  |> class
}

pub fn underlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "border-neutral placeholder-neutral text-neutral"
    Primary -> "border-primary placeholder-primary text-primary"
    Secondary -> "border-secondary placeholder-secondary text-secondary"
    Success -> "border-success placeholder-success text-success"
    Info -> "border-info placeholder-info text-info"
    Warning -> "border-warning placeholder-warning text-warning"
    Danger -> "border-danger placeholder-danger text-danger"
  }
  |> string.append(
    [
      " bg-transparent border-opacity-20 border-b-2 outline-none rounded-b-none",
      "focus:enabled:border-opacity-100",
    ]
    |> string.join(" "),
  )
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
