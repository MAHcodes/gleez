import lustre/element.{type Element}
import lustre/element/html.{div}
import pages/demo/buttons.{buttons}
import pages/demo/inputs.{inputs}
import pages/demo/links.{links}
import pages/demo/chips.{chips}

pub fn demo() -> Element(a) {
  div([], [chips(), links(), inputs(), buttons()])
}
