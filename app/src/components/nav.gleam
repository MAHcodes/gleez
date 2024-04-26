import components/ui/a.{a}
import lustre/attribute.{type Attribute, class, href}
import lustre/element.{type Element, text}
import lustre/element/html.{li, ul}
import lustre/route.{type Pages, is_active}

fn active_variant(active: Bool) -> Attribute(a) {
  case active {
    True -> a.link(a.Primary)
    False -> a.link(a.Neutral)
  }
}

pub fn nav(route: Pages) -> Element(a) {
  html.nav([], [
    ul([class("flex gap-8")], [
      item(route, route.home, "Home"),
      item(route, route.demo, "Demo"),
      item(route, route.docs, "Docs"),
    ]),
  ])
}

fn item(route: Pages, path: String, name: String) -> Element(a) {
  li([], [
    a([href(path), a.underline(a.Hover), active_variant(is_active(route, path))], [text(name)]),
  ])
}
