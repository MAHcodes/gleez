import gleam/string
import lustre/attribute.{type Attribute, class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}

pub fn tooltip(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
  element: Element(a),
) -> Element(a) {
  div([class("group relative")], [
    element,
    div(
      [
        [
          "scale-0 group-hover:scale-100", "opacity-0 group-hover:opacity-100",
          "absolute transition-all z-20 min-w-max max-w-xs pointer-events-none",
          "flex gap-2 items-center justify-center",
          "before:z-10 before:border-[6px] before:border-transparent before:absolute",
        ]
          |> string.join(" ")
          |> class,
        ..attributes
      ],
      children,
    ),
  ])
}

pub fn solid(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "bg-neutral border-neutral text-neutral-foreground"
    Primary -> "bg-primary border-primary text-primary-foreground"
    Secondary -> "bg-secondary border-secondary text-secondary-foreground"
    Success -> "bg-success border-success text-success-foreground"
    Info -> "bg-info border-info text-info-foreground"
    Warning -> "bg-warning border-warning text-warning-foreground"
    Danger -> "bg-danger border-danger text-danger-foreground"
  }
  |> class
}

pub fn outlined(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "outline-neutral text-neutral border-neutral"
    Primary -> "outline-primary text-primary border-primary"
    Secondary -> "outline-secondary text-secondary border-secondary"
    Success -> "outline-success text-success border-success"
    Info -> "outline-info text-info border-info"
    Warning -> "outline-warning text-warning border-warning"
    Danger -> "outline-danger text-danger border-danger"
  }
  |> string.append(" outline outline-1")
  |> class
}

pub fn flat(color: Colors) -> Attribute(a) {
  case color {
    Neutral -> "text-neutral bg-neutral/20 border-neutral/20"
    Primary -> "text-primary bg-primary/20 border-primary/20"
    Secondary -> "text-secondary bg-secondary/20 border-secondary/20"
    Success -> "text-success bg-success/20 border-success/20"
    Info -> "text-info bg-info/20 border-info/20"
    Warning -> "text-warning bg-warning/20 border-warning/20"
    Danger -> "text-danger bg-danger/20 border-danger/20"
  }
  |> class
}

pub fn top(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-t-inherit before:bottom-0 before:translate-y-full before:left-1/2 before:-translate-x-1/2"
    False -> ""
  }
  |> string.append(
    " -top-2 -translate-y-full left-1/2 -translate-x-1/2 origin-bottom",
  )
  |> class
}

pub fn top_start(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-t-inherit before:bottom-0 before:translate-y-full before:left-2"
    False -> ""
  }
  |> string.append(" -top-2 -translate-y-full left-0 origin-bottom-left")
  |> class
}

pub fn top_end(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-t-inherit before:bottom-0 before:translate-y-full before:right-2"
    False -> ""
  }
  |> string.append(" -top-2 -translate-y-full right-0 origin-bottom-right")
  |> class
}

pub fn right(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-r-inherit before:left-0 before:-translate-x-full before:top-1/2 before:-translate-y-1/2"
    False -> ""
  }
  |> string.append(
    " top-1/2 -translate-y-1/2 translate-x-full -right-2 origin-left",
  )
  |> class
}

pub fn right_start(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-r-inherit before:left-0 before:-translate-x-full before:top-2"
    False -> ""
  }
  |> string.append(" top-0 translate-x-full -right-2 origin-top-left")
  |> class
}

pub fn right_end(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-r-inherit before:left-0 before:-translate-x-full before:bottom-2"
    False -> ""
  }
  |> string.append(" bottom-0 translate-x-full -right-2 origin-bottom-left")
  |> class
}

pub fn left(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-l-inherit before:right-0 before:translate-x-full before:top-1/2 before:-translate-y-1/2"
    False -> ""
  }
  |> string.append(
    " top-1/2 -translate-y-1/2 -translate-x-full -left-2 origin-right",
  )
  |> class
}

pub fn left_start(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-l-inherit before:right-0 before:translate-x-full before:top-2"
    False -> ""
  }
  |> string.append(" top-0 -translate-x-full -left-2 origin-top-right")
  |> class
}

pub fn left_end(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-l-inherit before:right-0 before:translate-x-full before:bottom-2"
    False -> ""
  }
  |> string.append(" bottom-0 -translate-x-full -left-2 origin-bottom-right")
  |> class
}

pub fn bottom(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-b-inherit before:top-0 before:-translate-y-full before:left-1/2 before:-translate-x-1/2"
    False -> ""
  }
  |> string.append(
    " -bottom-2 translate-y-full left-1/2 -translate-x-1/2 origin-top",
  )
  |> class
}

pub fn bottom_start(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-b-inherit before:top-0 before:-translate-y-full before:left-2"
    False -> ""
  }
  |> string.append(" -bottom-2 translate-y-full left-0 origin-top-left")
  |> class
}

pub fn bottom_end(arrow arrow: Bool) -> Attribute(a) {
  case arrow {
    True ->
      "before:border-b-inherit before:top-0 before:-translate-y-full before:right-2"
    False -> ""
  }
  |> string.append(" -bottom-2 translate-y-full right-0 origin-top-right")
  |> class
}

pub fn sm() -> Attribute(a) {
  class("rounded-sm px-2 py-1 text-xs")
}

pub fn md() -> Attribute(a) {
  class("rounded-md px-3 py-1 text-sm")
}

pub fn lg() -> Attribute(a) {
  class("rounded-lg px-4 py-1 text-base")
}

pub type Time {
  Ms0
  Ms75
  Ms100
  Ms150
  Ms200
  Ms300
  Ms500
  Ms700
  Ms1000
}

fn open_delay_class(delay: Time) -> String {
  case delay {
    Ms0 -> "group-hover:delay-0"
    Ms75 -> "group-hover:delay-75"
    Ms100 -> "group-hover:delay-100"
    Ms150 -> "group-hover:delay-150"
    Ms200 -> "group-hover:delay-200"
    Ms300 -> "group-hover:delay-300"
    Ms500 -> "group-hover:delay-500"
    Ms700 -> "group-hover:delay-700"
    Ms1000 -> "group-hover:delay-1000"
  }
}

pub fn open_delay(delay: Time) -> Attribute(a) {
  delay
  |> open_delay_class
  |> class()
}

fn close_delay_class(delay: Time) -> String {
  case delay {
    Ms0 -> "group-[:not(.group:hover)]:delay-0"
    Ms75 -> "group-[:not(.group:hover)]:delay-75"
    Ms100 -> "group-[:not(.group:hover)]:delay-100"
    Ms150 -> "group-[:not(.group:hover)]:delay-150"
    Ms200 -> "group-[:not(.group:hover)]:delay-200"
    Ms300 -> "group-[:not(.group:hover)]:delay-300"
    Ms500 -> "group-[:not(.group:hover)]:delay-500"
    Ms700 -> "group-[:not(.group:hover)]:delay-700"
    Ms1000 -> "group-[:not(.group:hover)]:delay-1000"
  }
}

pub fn close_delay(delay: Time) -> Attribute(a) {
  delay
  |> close_delay_class
  |> class
}

pub fn delay(d: Time) -> Attribute(a) {
  [open_delay_class(d), close_delay_class(d)]
  |> string.join(" ")
  |> class
}
