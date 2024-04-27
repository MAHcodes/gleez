import gleam/list
import gleam/result
import gleam/string
import gleam/uri

pub type Pages {
  Home
  Demo
  Blog
  Intro

  Components
  Link
  Button
  Input
  Badge
}

pub const home = "/"

pub const demo = "/demo"

pub const blog = "/blog"

pub const intro = "/docs/guide/introduction"

pub const docs = intro

pub const button = "/docs/components/button"

pub const input = "/docs/components/input"

pub const link = "/docs/components/link"

pub const badge = "/docs/components/badge"

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
  Page(
    "Components",
    [Page(button, []), Page(input, []), Page(link, []), Page(badge, [])],
  ),
]

pub fn is_active(pages: Pages, path: String) -> Bool {
  case pages {
    Home -> path == home
    Demo -> path == demo
    Intro -> path == intro
    Blog -> path == blog
    Button -> path == button
    Input -> path == input
    Link -> path == link
    Badge -> path == badge
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
