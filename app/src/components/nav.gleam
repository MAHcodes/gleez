import components/ui/link.{a}
import lustre/attribute.{type Attribute, class, href}
import lustre/element.{type Element, text}
import lustre/element/html.{li, ul}
import model/route.{type Pages, is_active}

fn active_variant(active: Bool) -> Attribute(a) {
  case active {
    True -> link.link(link.Primary)
    False -> link.link(link.Neutral)
  }
}

pub fn nav(route: Pages) -> Element(a) {
  html.nav([], [
    ul([class("flex gap-8 pl-8 text-sm")], [
      item(route, route.components),
      item(route, route.docs),
      // item(route, route.blog),
    ]),
  ])
}

fn item(route: Pages, path: String) -> Element(a) {
  li([], [
    a(
      [
        href(path),
        link.underline(link.Hover),
        active_variant(is_active(route, path)),
      ],
      [text(route.path_name(path))],
    ),
  ])
}
