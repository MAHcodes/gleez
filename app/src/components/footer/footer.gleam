import components/ui/link.{a}
import lustre/attribute.{class, href, target}
import lustre/element.{type Element, text}
import lustre/element/html.{p}
import lustre/ui/icon

pub fn footer() -> Element(a) {
  html.footer(
    [class("container py-4 text-neutral text-sm flex gap-4 justify-center")],
    [
      p([class("flex items-center gap-2")], [
        text("Built with"),
        icon.heart_filled([class("w-4 text-primary")]),
        text("by"),
        a(
          [
            link.link(link.Neutral),
            link.underline(link.Hover),
            href("https://github.com/MAHcodes"),
            target("_blank"),
          ],
          [text("@mahcodes")],
        ),
      ]),
    ],
  )
}
