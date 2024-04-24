import lustre/element.{type Element}
import lustre/element/html.{div}
import sections/section

pub fn demo() -> Element(a) {
  div([], [section.inputs(), section.buttons()])
}
