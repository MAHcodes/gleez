import components/ui/breadcrumbs.{breadcrumbs}
import components/ui/link.{a}
import gleam/int
import gleam/list
import gleam/string
import gleam/uri
import lustre/attribute.{type Attribute, class, href}
import lustre/element.{type Element, text}
import lustre/ui/icon
import model/route.{type Pages}

fn page_segments(page: Pages) -> List(String) {
  page
  |> route.to_path
  |> uri.path_segments
}

fn segment_path(page: Pages, at: Int) -> String {
  "/" <> string.join(list.split(page_segments(page), at + 1).0, "/") <> "/"
}

pub fn barbecue(page: Pages) -> Element(a) {
  breadcrumbs(
    [class("mb-8"), breadcrumbs.md()],
    icon.chevron_right([class("w-4")]),
    page
      |> page_segments
      |> list.index_map(fn(x, i) { #(i, x) })
      |> list.map(fn(segment) {
      text(int.to_string(segment.0))
      a(
        [
          href(segment_path(page, segment.0)),
          active_variant(route.is_active(page, segment_path(page, segment.0))),
          link.underline(link.Hover),
        ],
        [text(route.path_name(segment.1))],
      )
    }),
  )
}

fn active_variant(active: Bool) -> Attribute(a) {
  case active {
    True -> link.link(link.Primary)
    False -> link.link(link.Neutral)
  }
}
