import components/ui/switch.{switch}
import lustre/attribute.{checked}
import lustre/element.{type Element}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Solid",
      "",
      [
        switch([switch.solid(switch.Neutral), switch.md(), checked(True)], []),
        switch([switch.solid(switch.Primary), switch.md(), checked(True)], []),
        switch([switch.solid(switch.Secondary), switch.md(), checked(True)], []),
        switch([switch.solid(switch.Success), switch.md(), checked(True)], []),
        switch([switch.solid(switch.Info), switch.md(), checked(True)], []),
        switch([switch.solid(switch.Warning), switch.md(), checked(True)], []),
        switch([switch.solid(switch.Danger), switch.md(), checked(True)], []),
      ],
      solid_code(),
    ),
    section.variant(
      "Outlined",
      "",
      [
        switch(
          [switch.outlined(switch.Neutral), switch.md(), checked(True)],
          [],
        ),
        switch(
          [switch.outlined(switch.Primary), switch.md(), checked(True)],
          [],
        ),
        switch(
          [switch.outlined(switch.Secondary), switch.md(), checked(True)],
          [],
        ),
        switch(
          [switch.outlined(switch.Success), switch.md(), checked(True)],
          [],
        ),
        switch([switch.outlined(switch.Info), switch.md(), checked(True)], []),
        switch(
          [switch.outlined(switch.Warning), switch.md(), checked(True)],
          [],
        ),
        switch([switch.outlined(switch.Danger), switch.md(), checked(True)], []),
      ],
      outlined_code(),
    ),
    section.variant(
      "Ghost",
      "",
      [
        switch([switch.ghost(switch.Neutral), switch.md(), checked(True)], []),
        switch([switch.ghost(switch.Primary), switch.md(), checked(True)], []),
        switch([switch.ghost(switch.Secondary), switch.md(), checked(True)], []),
        switch([switch.ghost(switch.Success), switch.md(), checked(True)], []),
        switch([switch.ghost(switch.Info), switch.md(), checked(True)], []),
        switch([switch.ghost(switch.Warning), switch.md(), checked(True)], []),
        switch([switch.ghost(switch.Danger), switch.md(), checked(True)], []),
      ],
      ghost_code(),
    ),
  ])
}

fn solid_code() -> String {
  "
import components/ui/switch.{switch}
import lustre/attribute.{checked, class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    switch([switch.solid(switch.Neutral), switch.md(), checked(True)], []),
    switch([switch.solid(switch.Primary), switch.md(), checked(True)], []),
    switch([switch.solid(switch.Secondary), switch.md(), checked(True)], []),
    switch([switch.solid(switch.Success), switch.md(), checked(True)], []),
    switch([switch.solid(switch.Info), switch.md(), checked(True)], []),
    switch([switch.solid(switch.Warning), switch.md(), checked(True)], []),
    switch([switch.solid(switch.Danger), switch.md(), checked(True)], []),
  ])
}
"
}

fn outlined_code() -> String {
  "
import components/ui/switch.{switch}
import lustre/attribute.{checked, class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    switch([switch.outlined(switch.Neutral), switch.md(), checked(True)], []),
    switch([switch.outlined(switch.Primary), switch.md(), checked(True)], []),
    switch([switch.outlined(switch.Secondary), switch.md(), checked(True)], []),
    switch([switch.outlined(switch.Success), switch.md(), checked(True)], []),
    switch([switch.outlined(switch.Info), switch.md(), checked(True)], []),
    switch([switch.outlined(switch.Warning), switch.md(), checked(True)], []),
    switch([switch.outlined(switch.Danger), switch.md(), checked(True)], []),
  ])
}
"
}

fn ghost_code() -> String {
  "
import components/ui/switch.{switch}
import lustre/attribute.{checked, class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    switch([switch.ghost(switch.Neutral), switch.md(), checked(True)], []),
    switch([switch.ghost(switch.Primary), switch.md(), checked(True)], []),
    switch([switch.ghost(switch.Secondary), switch.md(), checked(True)], []),
    switch([switch.ghost(switch.Success), switch.md(), checked(True)], []),
    switch([switch.ghost(switch.Info), switch.md(), checked(True)], []),
    switch([switch.ghost(switch.Warning), switch.md(), checked(True)], []),
    switch([switch.ghost(switch.Danger), switch.md(), checked(True)], []),
  ])
}
"
}
