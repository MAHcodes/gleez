import gleam/string
import lustre/attribute.{type Attribute, class, type_}
import lustre/element.{type Element}
import lustre/element/html.{input, label, span}

pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}

pub fn checkbox(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
) -> Element(a) {
  label([class("inline-flex items-center gap-2")], [
    input([
      type_("checkbox"),
      class(
        [
          "inline-flex items-center justify-center p-0.5 appearance-none transition-all rounded",
          "enabled:cursor-pointer disabled:cursor-not-allowed disabled:opacity-50",
          "[&:disabled+span]:opacity-50 [&:enabled+span]:cursor-pointer [&:disabled+span]:cursor-not-allowed",
          "checked:before:content-['✔'] before:inset-0 before:m-auto before:leading-[0]",
        ]
        |> string.join(" "),
      ),
      ..attributes
    ]),
    span([], children),
  ])
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral before:text-neutral-foreground"
    Primary -> "bg-primary before:text-primary-foreground"
    Secondary -> "bg-secondary before:text-secondary-foreground"
    Success -> "bg-success before:text-success-foreground"
    Info -> "bg-info before:text-info-foreground"
    Warning -> "bg-warning before:text-warning-foreground"
    Danger -> "bg-danger before:text-danger-foreground"
  }
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "border-neutral before:text-neutral"
    Primary -> "border-primary before:text-primary"
    Secondary -> "border-secondary before:text-secondary"
    Success -> "border-success before:text-success"
    Info -> "border-info before:text-info"
    Warning -> "border-warning before:text-warning"
    Danger -> "border-danger before:text-danger"
  }
  |> string.append(" border")
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral/20 before:text-neutral"
    Primary -> "bg-primary/20 before:text-primary"
    Secondary -> "bg-secondary/20 before:text-secondary"
    Success -> "bg-success/20 before:text-success"
    Info -> "bg-info/20 before:text-info"
    Warning -> "bg-warning/20 before:text-warning"
    Danger -> "bg-danger/20 before:text-danger"
  }
  |> class
}

pub fn ghost(color: Colors) -> Attribute(a) {
  case color {
    Neutral ->
      "checked:bg-neutral before:text-neutral-foreground border-neutral"
    Primary ->
      "checked:bg-primary before:text-primary-foreground border-primary"
    Secondary ->
      "checked:bg-secondary before:text-secondary-foreground border-secondary"
    Success ->
      "checked:bg-success before:text-success-foreground border-success"
    Info -> "checked:bg-info before:text-info-foreground border-info"
    Warning ->
      "checked:bg-warning before:text-warning-foreground border-warning"
    Danger -> "checked:bg-danger before:text-danger-foreground border-danger"
  }
  |> string.append(" border")
  |> class
}

pub fn sm() -> Attribute(a) {
  class("w-3 h-3 text-sm [&+span]:text-sm")
}

pub fn md() -> Attribute(a) {
  class("w-4 h-4 text-base [&+span]:text-base")
}

pub fn lg() -> Attribute(a) {
  class("w-5 h-5 text-lg [&+span]:text-lg")
}
