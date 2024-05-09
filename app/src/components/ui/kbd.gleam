import gleam/string
import lustre/attribute.{type Attribute, class}
import lustre/element.{type Element, text}
import lustre/element/html.{abbr}

pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}

pub fn kbd(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
) -> Element(a) {
  html.kbd(
    [
      class(
        [
          "shadow-[0px_.25rem_0px_0px]",
          "inline-flex gap-1 items-center justify-center transition-all [&_abbr]:no-underline leading-normal",
        ]
        |> string.join(" "),
      ),
      ..attributes
    ],
    children,
  )
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral shadow-neutral/50 text-neutral-foreground"
    Primary -> "bg-primary shadow-primary/50 text-primary-foreground"
    Secondary -> "bg-secondary shadow-secondary/50 text-secondary-foreground"
    Success -> "bg-success shadow-success/50 text-success-foreground"
    Info -> "bg-info shadow-info/50 text-info-foreground"
    Warning -> "bg-warning shadow-warning/50 text-warning-foreground"
    Danger -> "bg-danger shadow-danger/50 text-danger-foreground"
  }
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral shadow-neutral border-neutral"
    Primary -> "text-primary shadow-primary border-primary"
    Secondary -> "text-secondary shadow-secondary border-secondary"
    Success -> "text-success shadow-success border-success"
    Info -> "text-info shadow-info border-info"
    Warning -> "text-warning shadow-warning border-warning"
    Danger -> "text-danger shadow-danger border-danger"
  }
  |> string.append(" border-2")
  |> class
}

pub fn light(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral shadow-neutral"
    Primary -> "text-primary shadow-primary"
    Secondary -> "text-secondary shadow-secondary"
    Success -> "text-success shadow-success"
    Info -> "text-info shadow-info"
    Warning -> "text-warning shadow-warning"
    Danger -> "text-danger shadow-danger"
  }
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral shadow-neutral bg-neutral/20"
    Primary -> "text-primary shadow-primary bg-primary/20"
    Secondary -> "text-secondary shadow-secondary bg-secondary/20"
    Success -> "text-success shadow-success bg-success/20"
    Info -> "text-info shadow-info bg-info/20"
    Warning -> "text-warning shadow-warning bg-warning/20"
    Danger -> "text-danger shadow-danger bg-danger/20"
  }
  |> class
}

fn title(t: String) -> Attribute(a) {
  attribute.attribute("title", t)
}

pub fn command() -> Element(a) {
  abbr([title("Command")], [text("⌘")])
}

pub fn shift() -> Element(a) {
  abbr([title("Shift")], [text("⇧")])
}

pub fn ctrl() -> Element(a) {
  abbr([title("Ctrl")], [text("⌃")])
}

pub fn option() -> Element(a) {
  abbr([title("Option")], [text("⌥")])
}

pub fn enter() -> Element(a) {
  abbr([title("Enter")], [text("↵")])
}

pub fn delete() -> Element(a) {
  abbr([title("Delete")], [text("⌫")])
}

pub fn escape() -> Element(a) {
  abbr([title("Escape")], [text("⎋")])
}

pub fn tab() -> Element(a) {
  abbr([title("Tab")], [text("⇥")])
}

pub fn capslock() -> Element(a) {
  abbr([title("Caps Lock")], [text("⇪")])
}

pub fn up() -> Element(a) {
  abbr([title("Up")], [text("↑")])
}

pub fn right() -> Element(a) {
  abbr([title("Right")], [text("→")])
}

pub fn down() -> Element(a) {
  abbr([title("Down")], [text("↓")])
}

pub fn left() -> Element(a) {
  abbr([title("Left")], [text("←")])
}

pub fn pageup() -> Element(a) {
  abbr([title("Page Up")], [text("⇞")])
}

pub fn pagedown() -> Element(a) {
  abbr([title("Page Down")], [text("⇟")])
}

pub fn home() -> Element(a) {
  abbr([title("Home")], [text("↖")])
}

pub fn end() -> Element(a) {
  abbr([title("End")], [text("↘")])
}

pub fn help() -> Element(a) {
  abbr([title("Help")], [text("?")])
}

pub fn space() -> Element(a) {
  abbr([title("Space")], [text("␣")])
}

pub fn sm() -> Attribute(a) {
  class("px-1.5 py-0.5 text-xs rounded-sm")
}

pub fn md() -> Attribute(a) {
  class("px-1.5 py-0.5 text-sm rounded-sm")
}

pub fn lg() -> Attribute(a) {
  class("px-2 py-0.5 text-base rounded-md")
}
