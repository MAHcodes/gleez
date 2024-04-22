import components/ui/button as b
import lustre
import lustre/attribute.{class}
import lustre/element.{text}
import lustre/element/html.{div}

pub fn main() {
  let app = lustre.simple(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}

fn init(_flags) {
  0
}

type Msg {
  Incr
  Decr
}

fn update(model, msg) {
  case msg {
    Incr -> model + 1
    Decr -> model - 1
  }
}

fn view(_) {
  div([class("p-4 grid grid-cols-7 gap-4 items-center justify-items-center")], [
    b.button([b.solid(b.Neutral), b.md()], [text("Solid Neutral")]),
    b.button([b.solid(b.Primary), b.md()], [text("Solid Primary")]),
    b.button([b.solid(b.Secondary), b.md()], [text("Solid Secondary")]),
    b.button([b.solid(b.Success), b.md()], [text("Solid Success")]),
    b.button([b.solid(b.Info), b.md()], [text("Solid Info")]),
    b.button([b.solid(b.Warning), b.md()], [text("Solid Warning")]),
    b.button([b.solid(b.Danger), b.md()], [text("Solid Danger")]),
    b.button([b.outline(b.Neutral), b.md()], [text("Outline Neutral")]),
    b.button([b.outline(b.Primary), b.md()], [text("Outline Primary")]),
    b.button([b.outline(b.Secondary), b.md()], [text("Outline Secondary")]),
    b.button([b.outline(b.Success), b.md()], [text("Outline Success")]),
    b.button([b.outline(b.Info), b.md()], [text("Outline Info")]),
    b.button([b.outline(b.Warning), b.md()], [text("Outline Warning")]),
    b.button([b.outline(b.Danger), b.md()], [text("Outline Danger")]),
    b.button([b.link(b.Neutral), b.md()], [text("Link Neutral")]),
    b.button([b.link(b.Primary), b.md()], [text("Link Primary")]),
    b.button([b.link(b.Secondary), b.md()], [text("Link Secondary")]),
    b.button([b.link(b.Success), b.md()], [text("Link Success")]),
    b.button([b.link(b.Info), b.md()], [text("Link Info")]),
    b.button([b.link(b.Warning), b.md()], [text("Link Warning")]),
    b.button([b.link(b.Danger), b.md()], [text("Link Danger")]),
    b.button([b.light(b.Neutral), b.md()], [text("Light Neutral")]),
    b.button([b.light(b.Primary), b.md()], [text("Light Primary")]),
    b.button([b.light(b.Secondary), b.md()], [text("Light Secondary")]),
    b.button([b.light(b.Success), b.md()], [text("Light Success")]),
    b.button([b.light(b.Info), b.md()], [text("Light Info")]),
    b.button([b.light(b.Warning), b.md()], [text("Light Warning")]),
    b.button([b.light(b.Danger), b.md()], [text("Light Danger")]),
    b.button([b.flat(b.Neutral), b.md()], [text("Flat Neutral")]),
    b.button([b.flat(b.Primary), b.md()], [text("Flat Primary")]),
    b.button([b.flat(b.Secondary), b.md()], [text("Flat Secondary")]),
    b.button([b.flat(b.Success), b.md()], [text("Flat Success")]),
    b.button([b.flat(b.Info), b.md()], [text("Flat Info")]),
    b.button([b.flat(b.Warning), b.md()], [text("Flat Warning")]),
    b.button([b.flat(b.Danger), b.md()], [text("Flat Danger")]),
    b.button([b.ghost(b.Neutral), b.md()], [text("Ghost Neutral")]),
    b.button([b.ghost(b.Primary), b.md()], [text("Ghost Primary")]),
    b.button([b.ghost(b.Secondary), b.md()], [text("Ghost Secondary")]),
    b.button([b.ghost(b.Success), b.md()], [text("Ghost Success")]),
    b.button([b.ghost(b.Info), b.md()], [text("Ghost Info")]),
    b.button([b.ghost(b.Warning), b.md()], [text("Ghost Warning")]),
    b.button([b.ghost(b.Danger), b.md()], [text("Ghost Danger")]),
  ])
}
