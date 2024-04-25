pub type Pages {
  Home
  Demo
  Intro
  Components
  Button
  Input
}

pub const home = "/"

pub const demo = "/demo"

pub const intro = "/guide/introduction"

pub const components = "/components"

pub const button = "/docs/components/button"

pub const input = "/docs/components/input"

pub type Page {
  Page(path: String, sub_pages: List(Page))
}

pub const pages: List(Page) = [
  Page(
    "Guide",
    [
      Page("/guide/introduction", []),
      Page("/guide/installation", []),
      Page("/guide/cli", []),
    ],
  ),
  Page("Components", [Page(button, []), Page(input, [])]),
]
