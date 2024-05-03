import components/ui/link.{a}
import gleam/list
import gleam/string
import lustre/attribute.{type Attribute, class, href}
import lustre/element.{type Element, text}
import lustre/element/html.{div, h2, h3, li, ul}
import route/route.{type Page, type Pages, is_active}

pub fn aside(route: Pages) -> Element(a) {
  html.aside(
    [
      class(
        [
          "top-[4.5rem] pr-16 py-8 top-0 sticky z-10 overflow-y-auto",
          "flex flex-col gap-4 min-w-max",
        ]
        |> string.join(" "),
      ),
    ],
    list.map(route.pages(), list(route, _)),
  )
}

fn list(route: Pages, page: Page) -> Element(a) {
  div([class("flex flex-col gap-4")], [
    h2([class("text-bold text-lg")], [text(route.page_name(page))]),
    ul(
      [class("flex flex-col gap-2 pl-8 list-disc")],
      list.map(page.sub_pages, item(route, _)),
    ),
  ])
}

fn item(route: Pages, page: Page) -> Element(a) {
  case list.length(page.sub_pages) > 0 {
    True -> list(route, page)
    False ->
      li([], [
        h3([], [
          a([active_variant(is_active(route, page.path)), href(page.path)], [
            text(route.page_name(page)),
          ]),
        ]),
      ])
  }
}

fn active_variant(active: Bool) -> Attribute(a) {
  case active {
    True -> link.link(link.Primary)
    False -> link.link(link.Neutral)
  }
}
