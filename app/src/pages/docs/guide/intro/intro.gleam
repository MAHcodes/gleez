import components/markdown
import lustre/element.{type Element}

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
