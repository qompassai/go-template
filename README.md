<!-- qompassai/go-template/README.md -->
<!-- Replace Go, Template for Qompass AI Go projects. and go when you instantiate this template. -->

# Go

> Template for Qompass AI Go projects.

![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)

A Qompass AI template for Go (language) projects — educational
content, tooling notes, and starter code in the standard Qompass AI layout.

## How to use this template

1. On GitHub, click **Use this template** → **Create a new repository**.
   ([About creating a repository from a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template))
2. Name it after your project.
3. Replace every `{{PLACEHOLDER}}` in this README and in `CITATION.cff`,
   then delete this section.
4. Start from `src/00_hello.*` — it runs with the stock toolchain, no
   extra setup.

Placeholders used in this template:

| Placeholder      | Meaning                          | Example               |
|------------------|----------------------------------|-----------------------|
| `Go`    | Project name, title case         | Go           |
| `Template for Qompass AI Go projects.`| One-line repo description        | Template for Qompass AI Go projects.       |
| `go`       | Lowercase, URL-safe name         | go              |

## Layout

```text
src/            # teaching material: tutorials, annotated examples
tests/          # exercises with expected outputs (validation, not vibes)
docs/           # deep dives: setup, idioms, gotchas, ecosystem map
examples/       # runnable snippets, smallest-first
.github/        # CI: sanity checks on every push
```

## Neovim-first

Matt builds in Neovim. His config (diver) is the primary driver here:
see [docs/NEOVIM.md](docs/NEOVIM.md) for the wiring checklist
(formatter, linter, build/test, DAP). `.nvim.lua` ships project-local
settings — it defines commands only and never runs anything by itself.

## License

This project is licensed under the [Apache License, Version 2.0](./LICENSE).

Copyright 2026 Qompass AI.
