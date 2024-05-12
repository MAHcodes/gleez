import components/ui/chip.{chip}
import components/ui/link.{a}
import gleam/list
import gleam/string
import lustre/attribute.{type Attribute, class, href}
import lustre/element.{type Element, fragment, text}
import lustre/element/html.{div, h2, h3, li, span, ul}
import model/route.{type Page, type Pages, is_active}

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
  div([class("flex flex-col gap-2")], [
    h2([class("text-bold text-lg")], [text(route.page_name(page))]),
    ul([class("flex flex-col pl-1")], list.map(page.sub_pages, item(route, _))),
  ])
}

fn item(route: Pages, page: Page) -> Element(a) {
  case list.length(page.sub_pages) > 0 {
    True -> list(route, page)
    False ->
      li([], [
        h3([], [
          a(
            [
              class("pl-6 border-l py-1.5 flex items-center gap-2"),
              active_variant(is_active(route, page.path)),
              active_border(is_active(route, page.path)),
              href(page.path),
            ],
            [span([], [text(route.page_name(page))]), status(page)],
          ),
        ]),
      ])
  }
}

fn status(page: Page) -> Element(a) {
  case page.state {
    route.None -> fragment([])
    route.New -> chip([chip.flat(chip.Info), chip.sm()], [text("New")])
    route.Updated ->
      chip([chip.flat(chip.Warning), chip.sm()], [text("Updated")])
  }
}

fn active_variant(active: Bool) -> Attribute(a) {
  case active {
    True -> link.link(link.Primary)
    False -> link.link(link.Neutral)
  }
}

fn active_border(active: Bool) -> Attribute(a) {
  case active {
    True -> "border-current"
    False -> "border-neutral/20"
  }
  |> class
}
