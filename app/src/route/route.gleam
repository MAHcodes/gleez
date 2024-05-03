import gleam/list
import gleam/result
import gleam/string
import gleam/uri

pub type Pages {
  Home
  Demo
  Blog
  Intro
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
    Page("Guide", [
      Page(intro, []),
      Page(colors, []),
      Page("/docs/guide/cli", []),
    ]),
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

pub fn is_active(pages: Pages, path: String) -> Bool {
  case pages {
    Home -> path == intro
    Demo -> path == demo
    Colors -> path == colors
    Intro -> path == intro
    Blog -> path == blog
    Button -> path == button
    Input -> path == input
    Link -> path == link
    Chip -> path == chip
    Divider -> path == divider
    Tooltip -> path == tooltip
    Avatar -> path == avatar
    Components -> path == avatar
    Badge -> path == badge
  }
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
