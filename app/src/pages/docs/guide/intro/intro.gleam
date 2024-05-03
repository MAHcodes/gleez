import components/markdown
import components/prose.{prose}
import components/ui/divider.{divider}
import components/ui/link.{a}
import lustre/attribute.{alt, class, href, src, target}
import lustre/element.{type Element, text}
import lustre/element/html.{blockquote, details, div, h1, h2, img, p, summary}
import lustre/ui/icon

fn faq() {
  div([], [
    h2([], [text("FAQ")]),
    divider([class("mb-6"), divider.horizontal(divider.Neutral)]),
    details([], [
      summary([], [text("What is the origin of the name \"Gleez\"?")]),
      p([], [
        "**Gleez** is a mashup of **Gleam** and **Deez**, which raises the question, **\"What is Deez?\"**"
        |> markdown.from_text,
      ]),
    ]),
  ])
}

pub fn docs() -> Element(a) {
  prose([], [
    img([
      class("w-full h-auto max-w-screen-sm mx-auto mb-12 select-none"),
      src("/imgs/Gleez.svg"),
      alt("Gleez UI Logo"),
    ]),
    p([class("text-center font-bold text-lg mb-12")], [
      text("Elegant, Modern, and Customizable TailwindCSS components for ✨ "),
      a(
        [
          href("https://github.com/lustre-labs/lustre"),
          link.link(link.Primary),
          link.underline(link.Always),
          target("_blank"),
        ],
        [text("Lustre"), icon.external_link([class("w-4")])],
      ),
      text(" ✨"),
    ]),
    h1([], [text("Introduction")]),
    divider([class("mb-6"), divider.horizontal(divider.Neutral)]),
    p([], [
      text("Similar to "),
      a(
        [
          href("https://ui.shadcn.com/docs"),
          link.link(link.Neutral),
          link.underline(link.Always),
          target("_blank"),
        ],
        [text("shadcn"), icon.external_link([class("w-4")])],
      ),
    ]),
    blockquote([], [
      "This is **NOT** a component library. It's a collection of re-usable components that you can copy and paste into your apps."
      |> markdown.from_text,
    ]),
    faq(),
  ])
}
