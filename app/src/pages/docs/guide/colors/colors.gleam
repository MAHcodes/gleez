import components/markdown
import components/prose.{prose}
import components/snippet.{snippet}
import components/ui/divider.{divider}
import components/ui/link.{a}
import lustre/attribute.{class, href, target}
import lustre/element.{type Element, text}
import lustre/element/html.{br, code, h1, p}
import lustre/ui/icon

pub fn docs() -> Element(a) {
  prose([], [
    h1([], [text("Colors")]),
    divider([divider.solid(divider.Neutral), divider.horizontal(), divider.sm()]),
    p([], [
      text("Gleez"),
      code([], [text("Colors")]),
      text("are basically "),
      a(
        [
          link.link(link.Neutral),
          link.underline(link.Always),
          target("_blank"),
          href(
            "https://tailwindcss.com/docs/customizing-colors#using-custom-colors",
          ),
        ],
        [text("TailwindCSS Custom Colors"), icon.external_link([class("w-4")])],
      ),
    ]),
    markdown.from_text(
      "Gleez requires 7 custom TailwindCSS colors:
- `Neutral` 
- `Primary` 
- `Secondary` 
- `Success` 
- `Info` 
- `Warning` 
- `Danger`
",
    ),
    markdown.from_text(
      "Each component variant requires a `Color` type, which is defined within the component itself:",
    ),
    br([]),
    snippet(
      "pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}",
      "gleam",
    ),
    p([], [
      text(
        "You can extend the colors for each component and import them from the component.",
      ),
    ]),
    p([], [text("To manually configure the colors:")]),
    snippet(
      "// tailwind.config.js
module.exports = {
  theme: {
    extend: {
      colors: {
        neutral: {
          DEFAULT: \"hsl(var(--neutral) / <alpha-value>)\",
          foreground: \"hsl(var(--neutral-foreground) / <alpha-value>)\",
        },
        primary: {
          DEFAULT: \"hsl(var(--primary) / <alpha-value>)\",
          foreground: \"hsl(var(--primary-foreground) / <alpha-value>)\",
        },
        secondary: {
          DEFAULT: \"hsl(var(--secondary) / <alpha-value>)\",
          foreground: \"hsl(var(--secondary-foreground) / <alpha-value>)\",
        },
        info: {
          DEFAULT: \"hsl(var(--info) / <alpha-value>)\",
          foreground: \"hsl(var(--info-foreground) / <alpha-value>)\",
        },
        success: {
          DEFAULT: \"hsl(var(--success) / <alpha-value>)\",
          foreground: \"hsl(var(--success-foreground) / <alpha-value>)\",
        },
        warning: {
          DEFAULT: \"hsl(var(--warning) / <alpha-value>)\",
          foreground: \"hsl(var(--warning-foreground) / <alpha-value>)\",
        },
        danger: {
          DEFAULT: \"hsl(var(--danger) / <alpha-value>)\",
          foreground: \"hsl(var(--danger-foreground) / <alpha-value>)\",
        },
      },
    },
  },
}",
      "json",
    ),
    br([]),
    markdown.from_text("Define CSS variables for `light` and `dark` theme:"),
    br([]),
    snippet(
      "/* global.css */
@layer base {
  :root,
  .light {
    --neutral: 240 10% 40%;
    --neutral-foreground: 220 23% 95%;

    --primary: 331 82% 64%;
    --primary-foreground: 220 23% 95%;

    --secondary: 30 81% 63%;
    --secondary-foreground: 220 23% 95%;

    --success: 109 58% 40%;
    --success-foreground: 220 23% 95%;

    --info: 220 91% 54%;
    --info-foreground: 220 23% 95%;

    --warning: 35 77% 49%;
    --warning-foreground: 220 23% 95%;

    --danger: 347 87% 44%;
    --danger-foreground: 220 23% 95%;
  }

  .dark {
    --neutral: 240 10% 60%;
    --neutral-foreground: 240 21% 15%;

    --primary: 331 82% 64%;
    --primary-foreground: 240 21% 15%;

    --secondary: 30 81% 63%;
    --secondary-foreground: 240 21% 15%;

    --success: 115 54% 76%;
    --success-foreground: 240 21% 15%;

    --info: 217 92% 76%;
    --info-foreground: 240 21% 15%;

    --warning: 41 86% 83%;
    --warning-foreground: 240 21% 15%;

    --danger: 343 81% 75%;
    --danger-foreground: 240 21% 15%;
  }
}",
      "css",
    ),
  ])
}
