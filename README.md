# quarto-shapes

CSS shape classes for Quarto — style divs as shapes (circles, hexagons, stars, etc.) that can contain text and other elements. Supports fill, stroke, rotation, and sizing modifier classes. Works across **HTML** and **RevealJS** output.

📖 **[Documentation site](https://emilhvitfeldt.github.io/quarto-shapes/)**

## Installation

```bash
quarto add emilhvitfeldt/quarto-shapes
```

## Usage

Add the filter to your document:

```yaml
---
title: My Document
format: html
filters:
  - shapes
---
```

Then use shape classes on divs:

```markdown
::: {.shape-circle .shape-fill-blue}
Hello
:::

::: {.shape-hexagon .shape-fill-none .shape-stroke-red .shape-stroke-lg .shape-lg}
:::
```

## Features

- **Shape classes**: circle, square, triangle, hexagon, and more
- **Fill classes**: `.shape-fill-*` for interior color
- **Stroke classes**: `.shape-stroke-*` for outline color and `.shape-stroke-{sm,md,lg,xl}` for width
- **Rotation classes**: `.shape-rotate-45` through `.shape-rotate-315`
- **Sizing classes**: `.shape-sm`, `.shape-md`, `.shape-lg`, `.shape-full`
- **Composable**: mix any combination of modifiers

## Format support

| Format   | Notes |
|----------|-------|
| HTML     | ✅    |
| RevealJS | ✅    |

## License

MIT
