import components/ui/avatar.{avatar}
import lustre/attribute.{src}
import lustre/element.{type Element}
import pages/docs/sections/section

pub fn variants() -> Element(a) {
  section.variants([
    section.variant(
      "Outlined",
      "",
      [
        avatar([
          src("https://i.pravatar.cc/40?1"),
          avatar.outlined(avatar.Neutral),
          avatar.md(),
          avatar.radius_full(),
        ]),
        avatar([
          src("https://i.pravatar.cc/40?2"),
          avatar.outlined(avatar.Primary),
          avatar.md(),
          avatar.radius_full(),
        ]),
        avatar([
          src("https://i.pravatar.cc/40?3"),
          avatar.outlined(avatar.Secondary),
          avatar.md(),
          avatar.radius_full(),
        ]),
        avatar([
          src("https://i.pravatar.cc/40?4"),
          avatar.outlined(avatar.Success),
          avatar.md(),
          avatar.radius_full(),
        ]),
        avatar([
          src("https://i.pravatar.cc/40?5"),
          avatar.outlined(avatar.Info),
          avatar.md(),
          avatar.radius_full(),
        ]),
        avatar([
          src("https://i.pravatar.cc/40?6"),
          avatar.outlined(avatar.Warning),
          avatar.md(),
          avatar.radius_full(),
        ]),
        avatar([
          src("https://i.pravatar.cc/40?7"),
          avatar.outlined(avatar.Danger),
          avatar.md(),
          avatar.radius_full(),
        ]),
      ],
      outlined_code(),
    ),
  ])
}

fn outlined_code() -> String {
  "
import components/ui/avatar.{avatar}
import lustre/attribute.{class, src}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    avatar([
      src(\"https://i.pravatar.cc/40?1\"),
      avatar.outlined(avatar.Neutral),
      avatar.md(),
      avatar.radius_full(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/40?2\"),
      avatar.outlined(avatar.Primary),
      avatar.md(),
      avatar.radius_full(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/40?3\"),
      avatar.outlined(avatar.Secondary),
      avatar.md(),
      avatar.radius_full(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/40?4\"),
      avatar.outlined(avatar.Success),
      avatar.md(),
      avatar.radius_full(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/40?5\"),
      avatar.outlined(avatar.Info),
      avatar.md(),
      avatar.radius_full(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/40?6\"),
      avatar.outlined(avatar.Warning),
      avatar.md(),
      avatar.radius_full(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/40?7\"),
      avatar.outlined(avatar.Danger),
      avatar.md(),
      avatar.radius_full(),
    ]),
  ])
}
"
}
