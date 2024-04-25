pub type Route {
  Home
  Demo
  Components
  ComponentsButton
  ComponentsInput
}

pub const home = "/"

pub const demo = "/demo"

pub const components = "/components"

pub const components_button = "/docs/components/button"

pub const components_input = "/docs/components/input"

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
  Page("Components", [Page(components_button, []), Page(components_input, [])]),
]
