import gleam/string
import lustre/attribute.{type Attribute, class, src}
import lustre/element.{type Element}
import lustre/element/html.{div, img}

pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}

pub fn avatar(attributes: List(Attribute(a))) -> Element(a) {
  img([
    src(
      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/120px-User-avatar.svg.png",
    ),
    class("object-cover select-none"),
    ..attributes
  ])
}

pub fn group(avatars: List(Element(a))) -> Element(a) {
  div(
    [
      class(
        "flex [&>*]:-ms-2 [&>*]:transition-transform [&>*:hover]:-translate-x-2",
      ),
    ],
    avatars,
  )
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "ring-neutral"
    Primary -> "ring-primary"
    Secondary -> "ring-secondary"
    Success -> "ring-success"
    Info -> "ring-info"
    Warning -> "ring-warning"
    Danger -> "ring-danger"
  }
  |> string.append(" ring ring-2 ring-offset-2 ring-offset-background")
  |> class
}

pub fn sm() -> Attribute(a) {
  class("w-8 h-8")
}

pub fn md() -> Attribute(a) {
  class("w-10 h-10")
}

pub fn lg() -> Attribute(a) {
  class("w-14 h-14")
}

pub fn radius_sm() -> Attribute(a) {
  class("rounded-sm")
}

pub fn radius_md() -> Attribute(a) {
  class("rounded-sm")
}

pub fn radius_lg() -> Attribute(a) {
  class("rounded-lg")
}

pub fn radius_full() -> Attribute(a) {
  class("rounded-full")
}
