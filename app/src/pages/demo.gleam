import lustre/element.{type Element}
import lustre/element/html.{div}
import sections/buttons.{buttons}
import sections/inputs.{inputs}

pub fn demo() -> Element(a) {
  div([], [inputs(), buttons()])
}
