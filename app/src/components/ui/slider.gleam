import gleam/list
import gleam/string
import lustre/attribute.{type Attribute, class, type_}
import lustre/element.{type Element}
import lustre/element/html.{input}

pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}

pub fn slider(attributes: List(Attribute(a))) -> Element(a) {
  input([
    class(
      [
        "bg-transparent cursor-pointer disabled:opacity-50 disabled:pointer-events-none focus:outline-none",
        "appearance-none [&::-webkit-slider-thumb]:appearance-none [&::-moz-range-thumb]:appearance-none",
        "[&::-webkit-slider-thumb]:rounded-full [&::-webkit-slider-runnable-track]:rounded-full",
        "[&::-webkit-slider-runnable-track]:h-1.5 [&::-moz-range-track]:h-1.5",
        "[&::-moz-range-thumb]:rounded-full [&::-moz-range-track]:rounded-full",
        "[&::-webkit-slider-runnable-track]:w-full [&::-moz-range-track]:w-full",
        "[&::-webkit-slider-thumb]:transition-all [&::-moz-range-thumb]:transition-all",
        "[&::-webkit-slider-thumb]:shadow-[0_0_0_4px] [&::-moz-range-thumb]:border-4",
      ]
      |> string.join(" "),
    ),
    type_("range"),
    ..attributes
  ])
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> [
      "[&::-webkit-slider-thumb]:bg-neutral [&::-moz-range-thumb]:bg-neutral",
      "[&::-webkit-slider-runnable-track]:bg-neutral [&::-moz-range-track]:bg-neutral",
      "[&::-webkit-slider-thumb]:shadow-neutral [&::-moz-range-thumb]:border-neutral",
    ]
    Primary -> [
      "[&::-webkit-slider-thumb]:bg-primary [&::-moz-range-thumb]:bg-primary",
      "[&::-webkit-slider-runnable-track]:bg-primary [&::-moz-range-track]:bg-primary",
      "[&::-webkit-slider-thumb]:shadow-primary [&::-moz-range-thumb]:border-primary",
    ]
    Secondary -> [
      "[&::-webkit-slider-thumb]:bg-secondary [&::-moz-range-thumb]:bg-secondary",
      "[&::-webkit-slider-runnable-track]:bg-secondary [&::-moz-range-track]:bg-secondary",
      "[&::-webkit-slider-thumb]:shadow-secondary [&::-moz-range-thumb]:border-secondary",
    ]
    Success -> [
      "[&::-webkit-slider-thumb]:bg-success [&::-moz-range-thumb]:bg-success",
      "[&::-webkit-slider-runnable-track]:bg-success [&::-moz-range-track]:bg-success",
      "[&::-webkit-slider-thumb]:shadow-success [&::-moz-range-thumb]:border-success",
    ]
    Info -> [
      "[&::-webkit-slider-thumb]:bg-info [&::-moz-range-thumb]:bg-info",
      "[&::-webkit-slider-runnable-track]:bg-info [&::-moz-range-track]:bg-info",
      "[&::-webkit-slider-thumb]:shadow-info [&::-moz-range-thumb]:border-info",
    ]
    Warning -> [
      "[&::-webkit-slider-thumb]:bg-warning [&::-moz-range-thumb]:bg-warning",
      "[&::-webkit-slider-runnable-track]:bg-warning [&::-moz-range-track]:bg-warning",
      "[&::-webkit-slider-thumb]:shadow-warning [&::-moz-range-thumb]:border-warning",
    ]
    Danger -> [
      "[&::-webkit-slider-thumb]:bg-danger [&::-moz-range-thumb]:bg-danger",
      "[&::-webkit-slider-runnable-track]:bg-danger [&::-moz-range-track]:bg-danger",
      "[&::-webkit-slider-thumb]:shadow-danger [&::-moz-range-thumb]:border-danger",
    ]
  }
  |> string.join(" ")
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> [
      "[&::-webkit-slider-thumb]:bg-neutral-foreground [&::-moz-range-thumb]:bg-neutral-foreground",
      "[&::-webkit-slider-runnable-track]:bg-neutral [&::-moz-range-track]:bg-neutral",
      "[&::-webkit-slider-thumb]:shadow-neutral [&::-moz-range-thumb]:border-neutral",
    ]
    Primary -> [
      "[&::-webkit-slider-thumb]:bg-primary-foreground [&::-moz-range-thumb]:bg-primary-foreground",
      "[&::-webkit-slider-runnable-track]:bg-primary [&::-moz-range-track]:bg-primary",
      "[&::-webkit-slider-thumb]:shadow-primary [&::-moz-range-thumb]:border-primary",
    ]
    Secondary -> [
      "[&::-webkit-slider-thumb]:bg-secondary-foreground [&::-moz-range-thumb]:bg-secondary-foreground",
      "[&::-webkit-slider-runnable-track]:bg-secondary [&::-moz-range-track]:bg-secondary",
      "[&::-webkit-slider-thumb]:shadow-secondary [&::-moz-range-thumb]:border-secondary",
    ]
    Success -> [
      "[&::-webkit-slider-thumb]:bg-success-foreground [&::-moz-range-thumb]:bg-success-foreground",
      "[&::-webkit-slider-runnable-track]:bg-success [&::-moz-range-track]:bg-success",
      "[&::-webkit-slider-thumb]:shadow-success [&::-moz-range-thumb]:border-success",
    ]
    Info -> [
      "[&::-webkit-slider-thumb]:bg-info-foreground [&::-moz-range-thumb]:bg-info-foreground",
      "[&::-webkit-slider-runnable-track]:bg-info [&::-moz-range-track]:bg-info",
      "[&::-webkit-slider-thumb]:shadow-info [&::-moz-range-thumb]:border-info",
    ]
    Warning -> [
      "[&::-webkit-slider-thumb]:bg-warning-foreground [&::-moz-range-thumb]:bg-warning-foreground",
      "[&::-webkit-slider-runnable-track]:bg-warning [&::-moz-range-track]:bg-warning",
      "[&::-webkit-slider-thumb]:shadow-warning [&::-moz-range-thumb]:border-warning",
    ]
    Danger -> [
      "[&::-webkit-slider-thumb]:bg-danger-foreground [&::-moz-range-thumb]:bg-danger-foreground",
      "[&::-webkit-slider-runnable-track]:bg-danger [&::-moz-range-track]:bg-danger",
      "[&::-webkit-slider-thumb]:shadow-danger [&::-moz-range-thumb]:border-danger",
    ]
  }
  |> string.join(" ")
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> [
      "[&::-webkit-slider-thumb]:bg-neutral [&::-moz-range-thumb]:bg-neutral",
      "[&::-webkit-slider-runnable-track]:bg-neutral/20 [&::-moz-range-track]:bg-neutral/20",
      "[&:hover::-webkit-slider-runnable-track]:bg-neutral/30 [&:hover::-moz-range-track]:bg-neutral/30",
      "[&::-webkit-slider-thumb]:shadow-neutral [&::-moz-range-thumb]:border-neutral",
    ]
    Primary -> [
      "[&::-webkit-slider-thumb]:bg-primary [&::-moz-range-thumb]:bg-primary",
      "[&::-webkit-slider-runnable-track]:bg-primary/20 [&::-moz-range-track]:bg-primary/20",
      "[&:hover::-webkit-slider-runnable-track]:bg-primary/30 [&:hover::-moz-range-track]:bg-primary/30",
      "[&::-webkit-slider-thumb]:shadow-primary [&::-moz-range-thumb]:border-primary",
    ]
    Secondary -> [
      "[&::-webkit-slider-thumb]:bg-secondary [&::-moz-range-thumb]:bg-secondary",
      "[&::-webkit-slider-runnable-track]:bg-secondary/20 [&::-moz-range-track]:bg-secondary/20",
      "[&:hover::-webkit-slider-runnable-track]:bg-secondary/30 [&:hover::-moz-range-track]:bg-secondary/30",
      "[&::-webkit-slider-thumb]:shadow-secondary [&::-moz-range-thumb]:border-secondary",
    ]
    Success -> [
      "[&::-webkit-slider-thumb]:bg-success [&::-moz-range-thumb]:bg-success",
      "[&::-webkit-slider-runnable-track]:bg-success/20 [&::-moz-range-track]:bg-success/20",
      "[&:hover::-webkit-slider-runnable-track]:bg-success/30 [&:hover::-moz-range-track]:bg-success/30",
      "[&::-webkit-slider-thumb]:shadow-success [&::-moz-range-thumb]:border-success",
    ]
    Info -> [
      "[&::-webkit-slider-thumb]:bg-info [&::-moz-range-thumb]:bg-info",
      "[&::-webkit-slider-runnable-track]:bg-info/20 [&::-moz-range-track]:bg-info/20",
      "[&:hover::-webkit-slider-runnable-track]:bg-info/30 [&:hover::-moz-range-track]:bg-info/30",
      "[&::-webkit-slider-thumb]:shadow-info [&::-moz-range-thumb]:border-info",
    ]
    Warning -> [
      "[&::-webkit-slider-thumb]:bg-warning [&::-moz-range-thumb]:bg-warning",
      "[&::-webkit-slider-runnable-track]:bg-warning/20 [&::-moz-range-track]:bg-warning/20",
      "[&:hover::-webkit-slider-runnable-track]:bg-warning/30 [&:hover::-moz-range-track]:bg-warning/30",
      "[&::-webkit-slider-thumb]:shadow-warning [&::-moz-range-thumb]:border-warning",
    ]
    Danger -> [
      "[&::-webkit-slider-thumb]:bg-danger [&::-moz-range-thumb]:bg-danger",
      "[&::-webkit-slider-runnable-track]:bg-danger/20 [&::-moz-range-track]:bg-danger/20",
      "[&:hover::-webkit-slider-runnable-track]:bg-danger/30 [&:hover::-moz-range-track]:bg-danger/30",
      "[&::-webkit-slider-thumb]:shadow-danger [&::-moz-range-thumb]:border-danger",
    ]
  }
  |> string.join(" ")
  |> class
}

pub fn ghost(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> [
      "[&::-webkit-slider-thumb]:bg-neutral-foreground [&::-moz-range-thumb]:bg-neutral-foreground",
      "[&:hover::-webkit-slider-thumb]:bg-neutral [&:hover::-moz-range-thumb]:bg-neutral",
      "[&::-webkit-slider-runnable-track]:bg-neutral [&::-moz-range-track]:bg-neutral",
      "[&::-webkit-slider-thumb]:shadow-neutral [&::-moz-range-thumb]:border-neutral",
    ]
    Primary -> [
      "[&::-webkit-slider-thumb]:bg-primary-foreground [&::-moz-range-thumb]:bg-primary-foreground",
      "[&:hover::-webkit-slider-thumb]:bg-primary [&:hover::-moz-range-thumb]:bg-primary",
      "[&::-webkit-slider-runnable-track]:bg-primary [&::-moz-range-track]:bg-primary",
      "[&::-webkit-slider-thumb]:shadow-primary [&::-moz-range-thumb]:border-primary",
    ]
    Secondary -> [
      "[&::-webkit-slider-thumb]:bg-secondary-foreground [&::-moz-range-thumb]:bg-secondary-foreground",
      "[&:hover::-webkit-slider-thumb]:bg-secondary [&:hover::-moz-range-thumb]:bg-secondary",
      "[&::-webkit-slider-runnable-track]:bg-secondary [&::-moz-range-track]:bg-secondary",
      "[&::-webkit-slider-thumb]:shadow-secondary [&::-moz-range-thumb]:border-secondary",
    ]
    Success -> [
      "[&::-webkit-slider-thumb]:bg-success-foreground [&::-moz-range-thumb]:bg-success-foreground",
      "[&:hover::-webkit-slider-thumb]:bg-success [&:hover::-moz-range-thumb]:bg-success",
      "[&::-webkit-slider-runnable-track]:bg-success [&::-moz-range-track]:bg-success",
      "[&::-webkit-slider-thumb]:shadow-success [&::-moz-range-thumb]:border-success",
    ]
    Info -> [
      "[&::-webkit-slider-thumb]:bg-info-foreground [&::-moz-range-thumb]:bg-info-foreground",
      "[&:hover::-webkit-slider-thumb]:bg-info [&:hover::-moz-range-thumb]:bg-info",
      "[&::-webkit-slider-runnable-track]:bg-info [&::-moz-range-track]:bg-info",
      "[&::-webkit-slider-thumb]:shadow-info [&::-moz-range-thumb]:border-info",
    ]
    Warning -> [
      "[&::-webkit-slider-thumb]:bg-warning-foreground [&::-moz-range-thumb]:bg-warning-foreground",
      "[&:hover::-webkit-slider-thumb]:bg-warning [&:hover::-moz-range-thumb]:bg-warning",
      "[&::-webkit-slider-runnable-track]:bg-warning [&::-moz-range-track]:bg-warning",
      "[&::-webkit-slider-thumb]:shadow-warning [&::-moz-range-thumb]:border-warning",
    ]
    Danger -> [
      "[&::-webkit-slider-thumb]:bg-danger-foreground [&::-moz-range-thumb]:bg-danger-foreground",
      "[&:hover::-webkit-slider-thumb]:bg-danger [&:hover::-moz-range-thumb]:bg-danger",
      "[&::-webkit-slider-runnable-track]:bg-danger [&::-moz-range-track]:bg-danger",
      "[&::-webkit-slider-thumb]:shadow-danger [&::-moz-range-thumb]:border-danger",
    ]
  }
  |> list.append([
    "[&::-webkit-slider-thumb]:shadow-[0_0_0_4px]",
    "[&::-moz-range-thumb]:border-4",
  ])
  |> string.join(" ")
  |> class
}

pub fn sm() -> Attribute(a) {
  [
    "py-2", "[&::-webkit-slider-thumb]:-mt-[0.0625rem]",
    "[&::-webkit-slider-thumb]:w-2 [&::-webkit-slider-thumb]:h-2",
    "[&::-moz-range-thumb]:w-2 [&::-moz-range-thumb]:h-2",
  ]
  |> string.join(" ")
  |> class
}

pub fn md() -> Attribute(a) {
  [
    "py-2.5", "[&::-webkit-slider-thumb]:-mt-[0.1875rem]",
    "[&::-webkit-slider-thumb]:w-3 [&::-webkit-slider-thumb]:h-3",
    "[&::-moz-range-thumb]:w-3 [&::-moz-range-thumb]:h-3",
  ]
  |> string.join(" ")
  |> class
}

pub fn lg() -> Attribute(a) {
  [
    "py-3", "[&::-webkit-slider-thumb]:-mt-[0.313rem]",
    "[&::-webkit-slider-thumb]:w-4 [&::-webkit-slider-thumb]:h-4",
    "[&::-moz-range-thumb]:w-4 [&::-moz-range-thumb]:h-4",
  ]
  |> string.join(" ")
  |> class
}
