import components/aside.{aside}
import components/header/header
import gleam/uri.{type Uri}
import lustre
import lustre/attribute.{class}
import lustre/effect.{type Effect, batch}
import lustre/element.{type Element}
import lustre/element/html.{div}
import lustre/route.{type Pages}
import modem
import pages/page
import plinth/browser/window

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)
}

fn init(_) -> #(Pages, Effect(Msg)) {
  #(route.Intro, batch([modem.init(on_url_change), on_load()]))
}

fn on_url_change(uri: Uri) -> Msg {
  case uri.path_segments(uri.path) {
    ["home"] -> OnRouteChange(route.Home)
    ["demo"] -> OnRouteChange(route.Demo)
    ["docs", "guide", "introduction"] -> OnRouteChange(route.Intro)
    ["docs", "components", "button"] -> OnRouteChange(route.Button)
    ["docs", "components", "input"] -> OnRouteChange(route.Input)
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
  effect.from(fn(_) {
    window.request_animation_frame(do_attach_all)
    Nil
  })
}

fn highlight_all() -> Effect(a) {
  effect.from(fn(_) { do_highlight_all() })
}

fn on_load() -> Effect(a) {
  effect.batch([highlight_all(), attach_all()])
}

fn update(route: Pages, msg: Msg) -> #(Pages, Effect(Msg)) {
  case msg {
    OnRouteChange(r) -> #(r, on_load())
  }
}

fn view(route: Pages) -> Element(Msg) {
  div([], [
    header.header(),
    div([class("container")], [
      case route {
        route.Home -> page.home()
        route.Demo -> page.demo()
        _ -> with_aside(route)
      },
    ]),
  ])
}

fn with_aside(route: Pages) -> Element(Msg) {
  html.main([class("flex gap-4")], [
    aside(route),
    div([class("py-8 pl-8")], [
      case route {
        route.Button -> page.button()
        route.Input -> page.input()
        route.Intro -> page.intro()
        _ -> page.home()
      },
    ]),
  ])
}
