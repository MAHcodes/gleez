import gleam/list
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
    [class("flex items-center gap-2"), ..attributes],
    list.intersperse(children, separator),
  )
}
