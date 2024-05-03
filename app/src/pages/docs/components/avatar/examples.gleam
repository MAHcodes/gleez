import components/ui/avatar.{avatar}
import lustre/attribute.{src}
import lustre/element.{type Element}
import pages/docs/sections/section

pub fn examples() -> Element(a) {
  section.examples([
    section.example(
      "Fallback",
      "`avatar` will fallback to a default user avatar if the `src` attribute is not provided",
      [
        avatar([
          avatar.outlined(avatar.Neutral),
          avatar.md(),
          avatar.radius_full(),
        ]),
      ],
      fallback_code(),
    ),
    section.example(
      "Group",
      "
- `group(List(Element(a))`: Group a list of avatar elements",
      [
        avatar.group([
          avatar([
            src("https://i.pravatar.cc/40?1"),
            avatar.outlined(avatar.Neutral),
            avatar.md(),
            avatar.radius_full(),
          ]),
          avatar([
            src("https://i.pravatar.cc/40?2"),
            avatar.outlined(avatar.Neutral),
            avatar.md(),
            avatar.radius_full(),
          ]),
          avatar([
            src("https://i.pravatar.cc/40?3"),
            avatar.outlined(avatar.Neutral),
            avatar.md(),
            avatar.radius_full(),
          ]),
          avatar([
            src("https://i.pravatar.cc/40?4"),
            avatar.outlined(avatar.Neutral),
            avatar.md(),
            avatar.radius_full(),
          ]),
        ]),
      ],
      group_code(),
    ),
  ])
}

fn fallback_code() -> String {
  "
import components/ui/avatar.{avatar}
import lustre/attribute.{class}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    avatar([avatar.outlined(avatar.Neutral), avatar.md(), avatar.radius_full()]),
  ])
}
"
}

fn group_code() -> String {
  "
import components/ui/avatar.{avatar}
import lustre/attribute.{class, src}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    avatar.group([
      avatar([
        src(\"https://i.pravatar.cc/40?1\"),
        avatar.outlined(avatar.Neutral),
        avatar.md(),
        avatar.radius_full(),
      ]),
      avatar([
        src(\"https://i.pravatar.cc/40?2\"),
        avatar.outlined(avatar.Neutral),
        avatar.md(),
        avatar.radius_full(),
      ]),
      avatar([
        src(\"https://i.pravatar.cc/40?3\"),
        avatar.outlined(avatar.Neutral),
        avatar.md(),
        avatar.radius_full(),
      ]),
      avatar([
        src(\"https://i.pravatar.cc/40?4\"),
        avatar.outlined(avatar.Neutral),
        avatar.md(),
        avatar.radius_full(),
      ]),
    ]),
  ])
}
"
}
