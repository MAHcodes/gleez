import components/ui/avatar.{avatar}
import lustre/attribute.{src}
import lustre/element.{type Element}
import pages/docs/sections/section

pub fn attributes() -> Element(a) {
  section.attributes([
    section.attribute(
      "Size",
      "
- `sm()`: Small Size
- `md()`: Medium Size
- `lg()`: Large Size
     ",
      [
        avatar([
          src("https://i.pravatar.cc/32"),
          avatar.outlined(avatar.Neutral),
          avatar.sm(),
          avatar.radius_full(),
        ]),
        avatar([
          src("https://i.pravatar.cc/40?"),
          avatar.outlined(avatar.Neutral),
          avatar.md(),
          avatar.radius_full(),
        ]),
        avatar([
          src("https://i.pravatar.cc/56"),
          avatar.outlined(avatar.Neutral),
          avatar.lg(),
          avatar.radius_full(),
        ]),
      ],
      size_code(),
    ),
    section.attribute(
      "Radius",
      "
- `radius_sm()`: Small Border Radius
- `radius_md()`: Medium  Border Radius
- `radius_lg()`: Large Border Radius
- `radius_full()`: Large Border Radius
     ",
      [
        avatar([
          src("https://i.pravatar.cc/40"),
          avatar.outlined(avatar.Neutral),
          avatar.md(),
          avatar.radius_sm(),
        ]),
        avatar([
          src("https://i.pravatar.cc/40"),
          avatar.outlined(avatar.Neutral),
          avatar.md(),
          avatar.radius_md(),
        ]),
        avatar([
          src("https://i.pravatar.cc/40"),
          avatar.outlined(avatar.Neutral),
          avatar.md(),
          avatar.radius_lg(),
        ]),
        avatar([
          src("https://i.pravatar.cc/40"),
          avatar.outlined(avatar.Neutral),
          avatar.md(),
          avatar.radius_full(),
        ]),
      ],
      radius_code(),
    ),
  ])
}

pub fn size_code() -> String {
  "
import components/ui/avatar.{avatar}
import lustre/attribute.{class, src}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    avatar([
      src(\"https://i.pravatar.cc/32\"),
      avatar.outlined(avatar.Neutral),
      avatar.sm(),
      avatar.radius_full(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/40\"),
      avatar.outlined(avatar.Neutral),
      avatar.md(),
      avatar.radius_full(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/56\"),
      avatar.outlined(avatar.Neutral),
      avatar.lg(),
      avatar.radius_full(),
    ]),
  ])
}
"
}

pub fn radius_code() -> String {
  "
import components/ui/avatar.{avatar}
import lustre/attribute.{class, src}
import lustre/element.{type Element}
import lustre/element/html.{div}

pub fn demo() -> Element(a) {
  div([class(\"flex flex-wrap gap-4 items-center justify-center w-full\")], [
    avatar([
      src(\"https://i.pravatar.cc/40\"),
      avatar.outlined(avatar.Neutral),
      avatar.md(),
      avatar.radius_sm(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/40\"),
      avatar.outlined(avatar.Neutral),
      avatar.md(),
      avatar.radius_md(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/40\"),
      avatar.outlined(avatar.Neutral),
      avatar.md(),
      avatar.radius_lg(),
    ]),
    avatar([
      src(\"https://i.pravatar.cc/40\"),
      avatar.outlined(avatar.Neutral),
      avatar.md(),
      avatar.radius_full(),
    ]),
  ])
}
"
}
