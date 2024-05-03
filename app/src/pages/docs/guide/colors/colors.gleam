import components/markdown
import components/prose.{prose}
import components/snippet.{snippet}
import components/ui/link.{a}
import lustre/attribute.{class, href, target}
import lustre/element.{type Element, text}
import lustre/element/html.{code, h1, li, ol, p, span}
import lustre/ui/icon

pub fn docs() -> Element(a) {
  prose([], [
    h1([], [text("Colors")]),
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
    p([], [
      text(
        "Gleez requires 7 custom TailwindCSS colors, each component variant requires a color type, which is defined within the component itself:",
      ),
    ]),
    p([], [
      text(
        "",
      ),
    ]),
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
        "You can extend the colors for each component and import them from the component. To manually configure the colors, use the following code",
      ),
    ]),
    snippet(
      "// tailwind.config.js
module.exports = {
  theme: {
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
}",
      "json",
    ),
    p([], [text("Define the CSS variables: ")]),
    snippet(
      "/* global.css */
@layer base {
  :root {
    --neutral: 240 10% 40%;
    --neutral-foreground: 220 23% 95%;

    --primary: 331 82% 64%;
    --primary-foreground: 220 23% 95%;

    --secondary: 30 81% 63%;
    --secondary-foreground: 234 16% 35%;

    --success: 109 58% 40%;
    --success-foreground: 220 23% 95%;

    --info: 220 91% 54%;
    --info-foreground: 220 23% 95%;

    --warning: 35 77% 49%;
    --warning-foreground: 220 23% 95%;

    --danger: 347 87% 44%;
    --danger-foreground: 220 23% 95%;
  }
}",
      "css",
    ),
  ])
}
