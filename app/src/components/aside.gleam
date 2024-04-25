import gleam/list
import gleam/result
import gleam/string
import gleam/uri
import lustre/attribute.{class, classes, href}
import lustre/element.{type Element, text}
import lustre/element/html.{a, div, h2, h3, li, ul}
import lustre/route.{type Page, type Pages, is_active}

pub fn aside(route: Pages) -> Element(a) {
  html.aside(
    [
      class(
        [
          "pr-8 top-20 py-8 top-0 sticky z-10 max-h-screen overflow-y-auto",
          "flex flex-col gap-4 min-w-max",
        ]
        |> string.join(" "),
      ),
    ],
    list.map(route.pages, list(route, _)),
  )
}

fn list(route: Pages, page: Page) -> Element(a) {
  div([class("flex flex-col gap-4")], [
    h2([class("text-bold text-lg")], [text(get_page_name(page))]),
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
          a(
            [
              class(
                "text-foreground/50 hover:text-foreground transition-colors",
              ),
              classes([#("text-primary hover:text-primary", is_active(route, page))]),
              href(page.path),
            ],
            [text(get_page_name(page))],
          ),
        ]),
      ])
  }
}

fn get_page_name(page: Page) -> String {
  page.path
  |> uri.path_segments()
  |> list.last
  |> result.unwrap("")
  |> string.capitalise
}
