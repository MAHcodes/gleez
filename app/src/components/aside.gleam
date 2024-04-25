import gleam/list
import gleam/result
import gleam/string
import gleam/uri
import lustre/attribute.{class, classes, href}
import lustre/element.{type Element, text}
import lustre/element/html.{a, div, h2, h3, li, ul}
import lustre/route.{type Route, type Page}

fn is_active(route: Route, page: Page) -> Bool {
  case route {
    route.ComponentsButton -> page.path == route.components_button
    route.ComponentsInput -> page.path == route.components_input
    _ -> False
  }
}

pub fn aside(route: Route) -> Element(a) {
  html.aside(
    [
      class(
        [
          "pr-8 py-8 sticky top-0 h-screen overflow-y-auto",
          "flex flex-col gap-4 min-w-max",
        ]
        |> string.join(" "),
      ),
    ],
    list.map(route.pages, list(route, _)),
  )
}

fn list(route: Route, page: Page) -> Element(a) {
  div([class("flex flex-col gap-4")], [
    h2([class("text-bold text-lg")], [text(get_page_name(page))]),
    ul(
      [class("flex flex-col gap-2 pl-8 list-disc")],
      list.map(page.sub_pages, item(route, _)),
    ),
  ])
}

fn item(route: Route, page: Page) -> Element(a) {
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
              classes([#("text-primary", is_active(route, page))]),
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
