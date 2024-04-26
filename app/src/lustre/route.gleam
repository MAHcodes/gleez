import gleam/uri
import gleam/list
import gleam/result
import gleam/string

pub type Pages {
  Home
  Demo
  Intro
  Components
  Link
  Button
  Input
}

pub const home = "/"

pub const demo = "/demo"

pub const intro = "/docs/guide/introduction"

pub const docs = intro

pub const button = "/docs/components/button"

pub const input = "/docs/components/input"

pub const link = "/docs/components/link"

pub type Page {
  Page(path: String, sub_pages: List(Page))
}

pub const pages: List(Page) = [
  Page(
    "Guide",
    [
      Page("/docs/guide/introduction", []),
      Page("/docs/guide/installation", []),
      Page("/docs/guide/cli", []),
    ],
  ),
  Page("Components", [Page(button, []), Page(input, []), Page(link, [])]),
]

pub fn is_active(ps: Pages, p: Page) -> Bool {
  case ps {
    Button -> p.path == button
    Input -> p.path == input
    Link -> p.path == link
    Intro -> p.path == intro
    _ -> False
  }
}

pub fn get_page_name(page: Page) -> String {
  page.path
  |> uri.path_segments()
  |> list.last
  |> result.unwrap("")
  |> string.capitalise
}
