import lustre/attribute.{type Attribute, class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn prose(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
) -> Element(a) {
  div([class("prose"), ..attributes], children)
}
