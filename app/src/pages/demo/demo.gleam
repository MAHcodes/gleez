import components/ui/avatar.{avatar}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class("flex flex-wrap gap-4 items-center justify-center w-full")], [
    avatar([avatar.outlined(avatar.Neutral), avatar.md(), avatar.radius_full()]),
  ])
}
