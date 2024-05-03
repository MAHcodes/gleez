import gleam/list
import gleam/result
import gleam/string
import gleam/uri

pub type Pages {
  Home
  Demo
  Blog
  Intro
  Installation
  Colors
  Components
  Link
  Button
  Input
  Chip
  Divider
  Tooltip
  Avatar
  Badge
}

pub const home = "/"

pub const demo = "/demo"

pub const blog = "/blog"

pub const intro = "/docs/guide/introduction"

pub const installation = "/docs/guide/installation"

pub const colors = "/docs/guide/colors"

pub const docs = "/docs"

pub const components = "/docs/components/"

pub const button = "/docs/components/button"

pub const input = "/docs/components/input"

pub const link = "/docs/components/link"

pub const chip = "/docs/components/chip"

pub const divider = "/docs/components/divider"

pub const tooltip = "/docs/components/tooltip"

pub const avatar = "/docs/components/avatar"

pub const badge = "/docs/components/badge"

// TODO:
pub const alert = "/docs/components/alert"

pub const textarea = "/docs/components/textarea"

pub const code = "/docs/components/code"

pub const skeleton = "/docs/components/skeleton"

pub type Page {
  Page(path: String, sub_pages: List(Page))
}

pub fn pages() -> List(Page) {
  [
    Page("Guide", [Page(intro, []), Page(installation, []), Page(colors, [])]),
    Page(
      components,
      [
        Page(button, []),
        Page(input, []),
        Page(link, []),
        Page(chip, []),
        Page(divider, []),
        Page(tooltip, []),
        Page(avatar, []),
        Page(badge, []),
      ]
        |> sort_pages,
    ),
  ]
}

pub fn to_path(page: Pages) -> String {
  case page {
    Home -> intro
    Demo -> demo
    Colors -> colors
    Intro -> intro
    Blog -> blog
    Button -> button
    Input -> input
    Link -> link
    Chip -> chip
    Divider -> divider
    Tooltip -> tooltip
    Avatar -> avatar
    Components -> avatar
    Installation -> installation
    Badge -> badge
  }
}

pub fn is_active(page: Pages, path: String) -> Bool {
  to_path(page) == path
}

// used to sort the pages
fn compare_pages(p1: Page, p2: Page) {
  string.compare(page_name(p1), page_name(p2))
}

fn sort_pages(pages: List(Page)) -> List(Page) {
  pages
  |> list.sort(compare_pages)
}

pub fn page_name(page: Page) -> String {
  page.path
  |> path_name
}

pub fn path_name(path: String) -> String {
  path
  |> uri.path_segments()
  |> list.last
  |> result.unwrap("")
  |> string.capitalise
}
