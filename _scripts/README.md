# Site scripts

## Social cards

Each social card uses the blog's typography and color tokens from
`_sass/minima.scss`. The generator reads a post's `title` (or an optional
`social_title`), publication date, and `image` path, then writes an editable SVG
and a 1200x627 PNG:

```sh
ruby _scripts/generate_social_card.rb _posts/YYYY-MM-DD-slug.markdown
```

New posts should include an image path in their front matter:

```yaml
image: /assets/social/slug.png
```

The generated SVG is saved beside the PNG and should be kept as the source
asset. Use `--svg-only` when only the source file needs updating.

The PNG renderer is selected automatically. macOS uses the included
Swift/AppKit renderer with the system Command Line Tools; Linux can use
`rsvg-convert`, ImageMagick, or Inkscape.
