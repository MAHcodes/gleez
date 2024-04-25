import components/markdown
import lustre/element.{type Element}
import pages/docs/components/input/input

pub fn docs() -> Element(a) {
  "
# Introduction

## Why Gleez?

Just because...

## What Gleez?

Gleez Nuts

## When Gleez?

IDK
"
  |> markdown.from_text
}
