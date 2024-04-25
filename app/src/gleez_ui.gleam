import gleam/uri.{type Uri}
import lustre
import lustre/attribute
import lustre/effect.{type Effect, batch}
import lustre/element.{type Element}
import lustre/element/html
import modem
import pages/page
import plinth/browser/window

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)
}

pub type Route {
  Home
  Demo
  Docs
}

fn init(_) -> #(Route, Effect(Msg)) {
  #(Docs, batch([modem.init(on_url_change), on_load()]))
}

fn on_url_change(uri: Uri) -> Msg {
  case uri.path_segments(uri.path) {
    ["home"] -> OnRouteChange(Home)
    ["demo"] -> OnRouteChange(Demo)
    ["docs"] -> OnRouteChange(Docs)
    _ -> OnRouteChange(Home)
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
    OnRouteChange(r) -> #(r, highlight_all())
  }
}

fn view(route: Route) -> Element(Msg) {
  html.div([], [
    html.nav([attribute.class("flex gap-4")], [
      html.a([attribute.href("/home")], [element.text("Home")]),
      html.a([attribute.href("/demo")], [element.text("Demo")]),
      html.a([attribute.href("/docs")], [element.text("Docs")]),
    ]),
    case route {
      Home -> html.h1([], [element.text("You're on home")])
      Demo -> page.demo()
      Docs -> page.docs()
    },
  ])
}
