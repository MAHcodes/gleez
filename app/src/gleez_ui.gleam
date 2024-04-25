import components/header
import gleam/uri.{type Uri}
import lustre
import lustre/attribute.{class}
import lustre/effect.{type Effect, batch}
import lustre/element.{type Element}
import lustre/element/html.{div}
import lustre/route.{type Route}
import modem
import pages/demo.{demo}
import pages/home.{home}
import plinth/browser/window
import pages/docs/components/button/button
import pages/docs/components/input/input

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)
}

fn init(_) -> #(Route, Effect(Msg)) {
  #(route.DocsComponentsInput, batch([modem.init(on_url_change), on_load()]))
}

fn on_url_change(uri: Uri) -> Msg {
  case uri.path_segments(uri.path) {
    ["home"] -> OnRouteChange(route.Home)
    ["demo"] -> OnRouteChange(route.Demo)
    ["docs"] -> OnRouteChange(route.Docs)
    ["docs", "components", "button"] ->
      OnRouteChange(route.DocsComponentsButton)
    ["docs", "components", "input"] ->
      OnRouteChange(route.DocsComponentsInput)
    _ -> OnRouteChange(route.Home)
  }
}

pub opaque type Msg {
  OnRouteChange(Route)
}

@external(javascript, "./assets/js/highlight/gleam.ffi.mjs", "highlight_all")
fn do_highlight_all() -> Nil {
  Nil
}

@external(javascript, "./assets/js/copy.ffi.js", "attach")
fn attach() -> Nil {
  Nil
}

fn attach_copy() -> Effect(a) {
  effect.from(fn(_) {
    window.request_animation_frame(attach)
    Nil
  })
}

fn highlight_all() -> Effect(a) {
  effect.from(fn(_) { do_highlight_all() })
}

fn on_load() -> Effect(a) {
  effect.batch([highlight_all(), attach_copy()])
}

fn update(route: Route, msg: Msg) -> #(Route, Effect(Msg)) {
  case msg {
    OnRouteChange(r) -> #(r, on_load())
  }
}

fn view(route: Route) -> Element(Msg) {
  html.div([], [
    header.header(),
    div([class("container")], [
      case route {
        route.Home -> home()
        route.Demo -> demo()
        _ -> docs_view(route)
      },
    ]),
  ])
}

fn docs_view(route: Route) -> Element(Msg) {
  case route {
    route.DocsComponentsButton -> button.docs()
    route.DocsComponentsInput -> input.docs()
    _ -> home()
  }
}
