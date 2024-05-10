import components/markdown
import components/prose.{prose}
import components/ui/divider.{divider}
import components/ui/link.{a}
import gleam/int
import gleam/option.{type Option, None, Some}
import lustre/attribute.{alt, class, height, href, rel, src, target, width}
import lustre/element.{type Element, fragment, text}
import lustre/element/html.{
  blockquote, details, div, h2, img, li, p, summary, ul,
}
import lustre/ui/icon
import model/repo.{type Repo}

fn faq() -> Element(a) {
  fragment([
    h2([], [text("FAQ")]),
    divider([
      class("mb-6"),
      divider.solid(divider.Neutral),
      divider.horizontal(),
      divider.sm(),
    ]),
    details([], [
      summary([], [text("What is the origin of the name \"Gleez\"?")]),
      p([], [
        "**Gleez** is a mashup of **Gleam** and **Deez**, which raises the question, **\"What is Deez?\"**"
        |> markdown.from_text,
      ]),
    ]),
  ])
}

fn shadcn() -> Element(a) {
  fragment([
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
    p([], [
      text(
        "This website showcases a real-world application built with Lustre and Gleez. you can check the source code on GitHub, as it's open source under the MIT License.",
      ),
    ]),
  ])
}

fn fun_fact(repo: Option(Repo)) -> Element(a) {
  case repo {
    Some(r) ->
      div([], [
        h2([], [text("Fun Fact")]),
        divider([
          class("mb-6"),
          divider.solid(divider.Neutral),
          divider.horizontal(),
          divider.sm(),
        ]),
        p([class("flex items-center gap-2")], [
          text("You can bump up our "),
          text(int.to_string(r.stargazers_count)),
          text(" stars on GitHub by one."),
        ]),
      ])
    None -> fragment([])
  }
}

fn acknowledgments() -> Element(a) {
  let link_atts = [
    class("not-prose"),
    link.link(link.Neutral),
    link.underline(link.Hover),
    target("_blank"),
  ]

  fragment([
    h2([], [text("Acknowledgments")]),
    divider([
      class("mb-6"),
      divider.solid(divider.Neutral),
      divider.horizontal(),
      divider.sm(),
    ]),
    ul([], [
      li([], [
        a([href("https://github.com/lustre-labs/ui"), ..link_atts], [
          text("lustre-ui"),
        ]),
        text(" (reference)"),
      ]),
      li([], [
        a([href("https://github.com/gleam-lang/language-tour"), ..link_atts], [
          text("gleam-tour"),
        ]),
        text(" (code highlights)"),
      ]),
      li([], [
        a([href("https://github.com/shadcn-ui/ui"), ..link_atts], [
          text("shadcn"),
        ]),
        text(" (concept)"),
      ]),
      li([], [
        a([href("https://github.com/nextui-org/nextui"), ..link_atts], [
          text("NextUI"),
        ]),
        text(" (inspiration)"),
      ]),
      li([], [
        a([href("https://github.com/catppuccin/catppuccin"), ..link_atts], [
          text("Catppuccin"),
        ]),
        text(" (colors)"),
      ]),
    ]),
  ])
}

pub fn docs(repo: Option(Repo)) -> Element(a) {
  prose([], [
    img([
      class("w-full h-auto max-w-screen-sm mx-auto mb-12 select-none"),
      src("/imgs/Gleez.svg"),
      alt("Gleez UI Logo"),
      rel("preload"),
      width(640),
      height(201),
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
    h2([], [text("Introduction")]),
    divider([
      class("mb-6"),
      divider.solid(divider.Neutral),
      divider.horizontal(),
      divider.sm(),
    ]),
    shadcn(),
    fun_fact(repo),
    faq(),
    acknowledgments(),
  ])
}
