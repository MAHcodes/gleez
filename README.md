<h3 align="center">
  <img src="https://raw.githubusercontent.com/MAHcodes/gleez/master/app/public/imgs/Gleez.svg" width="700" alt="Gleez Logo"/>
  <br/><br/>
  Elegant, Modern, and Customizable TailwindCSS components for ✨ <a href="https://github.com/lustre-labs/lustre">Lustre</a> ✨
</h3>

<p align="center">
  <a href="https://github.com/MAHcodes/gleez/blob/master/app/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
	<a href="https://github.com/MAHcodes/gleez/stargazers"><img src="https://img.shields.io/github/stars/MAHcodes/gleez?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/MAHcodes/gleez/issues"><img src="https://img.shields.io/github/issues/MAHcodes/gleez?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/MAHcodes/gleez/contributors"><img src="https://img.shields.io/github/contributors/MAHcodes/gleez?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

## :sparkles: Introduction

Similar to [shadcn](https://ui.shadcn.com/docs)

> This is NOT a component library. It's a collection of re-usable components that you can copy and paste into your apps.

This website showcases a real-world application built with Lustre and Gleez. you can check the source code on GitHub, as it's open source under the MIT License.

## :rocket: Installation

As mentioned earlier, this is **NOT** a component library. Instead, it's a collection of reusable components that you can integrate into your apps.

You can either copy and paste the components directly, or install them using `gleez` cli.

To install the gleez cli:

```sh
gleam add gleez --dev
```

## :rainbow: Colors

Gleez `Colors` are basically [TailwindCSS Custom Colors](https://tailwindcss.com/docs/customizing-colors#using-custom-colors)

Gleez requires 7 custom TailwindCSS colors:

- `Neutral`
- `Primary`
- `Secondary`
- `Success`
- `Info`
- `Warning`
- `Danger`

Each component variant requires a `Color` type, which is defined within the component itself:

```gleam
pub type Colors {
  Neutral
  Primary
  Secondary
  Success
  Info
  Warning
  Danger
}
```

You can extend the colors for each component and import them from the component.

To manually configure the colors:

```js
// tailwind.config.js
module.exports = {
  theme: {
    extend: {
      colors: {
        neutral: {
          DEFAULT: "hsl(var(--neutral) / <alpha-value>)",
          foreground: "hsl(var(--neutral-foreground) / <alpha-value>)",
        },
        primary: {
          DEFAULT: "hsl(var(--primary) / <alpha-value>)",
          foreground: "hsl(var(--primary-foreground) / <alpha-value>)",
        },
        secondary: {
          DEFAULT: "hsl(var(--secondary) / <alpha-value>)",
          foreground: "hsl(var(--secondary-foreground) / <alpha-value>)",
        },
        info: {
          DEFAULT: "hsl(var(--info) / <alpha-value>)",
          foreground: "hsl(var(--info-foreground) / <alpha-value>)",
        },
        success: {
          DEFAULT: "hsl(var(--success) / <alpha-value>)",
          foreground: "hsl(var(--success-foreground) / <alpha-value>)",
        },
        warning: {
          DEFAULT: "hsl(var(--warning) / <alpha-value>)",
          foreground: "hsl(var(--warning-foreground) / <alpha-value>)",
        },
        danger: {
          DEFAULT: "hsl(var(--danger) / <alpha-value>)",
          foreground: "hsl(var(--danger-foreground) / <alpha-value>)",
        },
      },
    },
  },
};
```

Define CSS variables for light and dark theme:

```css
/* global.css */
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
}
```

## :question: FAQ

<details>
    <summary>What is the origin of the name "Gleez"?</summary>
    <strong>Gleez</strong> is a mashup of<strong> Gleam </strong> and<strong> Deez</strong>, which raises the question,<strong> "What is Deez?"</strong>
</details>

## :pray: Acknowledgments

- [lustre-ui](https://github.com/lustre-labs/ui) (reference)
- [gleam-tour](https://github.com/gleam-lang/language-tour) (code highlights)
- [shadcn](https://github.com/shadcn-ui/ui) (concept)
- [NextUI](https://github.com/nextui-org/nextui) (inspiration)
- [Catppuccin](https://github.com/catppuccin/catppuccin) (colors)
