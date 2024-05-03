import components/aside.{aside}
import components/footer/footer.{footer}
import components/header/header.{header}
import gleam/uri.{type Uri}
import lustre
import lustre/attribute.{class}
import lustre/effect.{type Effect, batch}
import lustre/element.{type Element}
import lustre/element/html.{div}
import modem
import pages/page
import route/route.{type Pages}

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)
}

fn init(_) -> #(Pages, Effect(Msg)) {
  #(route.Intro, batch([modem.init(on_url_change), on_load()]))
}

fn on_url_change(uri: Uri) -> Msg {
  case uri.path_segments(uri.path) {
    ["demo"] -> OnRouteChange(route.Demo)
    ["blog"] -> OnRouteChange(route.Blog)
    ["docs", "guide", "introduction"] -> OnRouteChange(route.Intro)
    ["docs", "guide", "colors"] -> OnRouteChange(route.Colors)
    ["docs", "components"] -> OnRouteChange(route.Components)
    ["docs", "components", "button"] -> OnRouteChange(route.Button)
    ["docs", "components", "input"] -> OnRouteChange(route.Input)
    ["docs", "components", "link"] -> OnRouteChange(route.Link)
    ["docs", "components", "chip"] -> OnRouteChange(route.Chip)
    ["docs", "components", "divider"] -> OnRouteChange(route.Divider)
    ["docs", "components", "tooltip"] -> OnRouteChange(route.Tooltip)
    ["docs", "components", "avatar"] -> OnRouteChange(route.Avatar)
    ["docs", "components", "badge"] -> OnRouteChange(route.Badge)
    _ -> OnRouteChange(route.Home)
  }
}

pub opaque type Msg {
  OnRouteChange(Pages)
}

@external(javascript, "./assets/js/highlight/gleam.ffi.mjs", "highlight_all")
fn do_highlight_all() -> Nil

@external(javascript, "./assets/js/ffi.js", "attach_all")
fn do_attach_all() -> Nil

fn attach_all() -> Effect(a) {
  effect.from(fn(_) { do_attach_all() })
}

fn highlight_all() -> Effect(a) {
  effect.from(fn(_) { do_highlight_all() })
}

fn on_load() -> Effect(a) {
  effect.batch([highlight_all(), attach_all()])
}

fn update(_: Pages, msg: Msg) -> #(Pages, Effect(Msg)) {
  case msg {
    OnRouteChange(r) -> #(r, on_load())
  }
}

fn view(route: Pages) -> Element(Msg) {
  html.main([], [
    header(route),
    div([class("container")], [
      case route {
        // route.Home -> page.home()
        route.Demo -> page.demo()
        route.Blog -> page.blog()
        _ -> with_aside(route)
      },
    ]),
    footer(),
  ])
}

fn with_aside(route: Pages) -> Element(Msg) {
  div([class("flex gap-10")], [
    aside(route),
    div([class("py-8 flex-1")], [
      case route {
        route.Home -> page.intro()
        route.Intro -> page.intro()
        route.Colors -> page.colors()
        route.Components -> page.avatar()
        route.Button -> page.button()
        route.Input -> page.input()
        route.Link -> page.link()
        route.Chip -> page.chip()
        route.Divider -> page.divider()
        route.Tooltip -> page.tooltip()
        route.Avatar -> page.avatar()
        route.Badge -> page.badge()
        _ -> page.home()
      },
    ]),
  ])
}
