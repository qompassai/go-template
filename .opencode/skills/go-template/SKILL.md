---
name: go-template
description: Go project workflow for repositories instantiated from the Qompass AI go-template — build, test, vet, gofmt, gopls, Tiger Style Go conventions, and the sanity gate script. Use when writing, reviewing, or refactoring Go code in this project.
---

# go-template skill

Workflow for Go work in this project.

## When to use this skill

Use it whenever you write, review, refactor, or debug Go code here —
especially before committing. It defines the gates: gofmt clean,
`go vet` clean, tests green.

## Project layout

- `src/` — starter source (`src/00_hello.go`)
- `examples/` — example programs
- `tests/` — tests + `tests/TESTING.md`
- `docs/` — `GUIDE.md`, `TOOLCHAIN.md`, `NEOVIM.md`
- `.opencode/skills/go-template/` — this skill

## Workflow

1. Make sure a module exists: `go mod init <module-path>` — the template
   ships without `go.mod`.
2. Write code in Tiger Style Go (see Conventions below; use the
   `tiger-style-go` skill when writing or reviewing Go).
3. `gofmt -w` the files you touched; `gofmt -l .` must print nothing.
4. `go vet ./...` — must be clean.
5. `go test ./...` — must be green.
6. Or run `scripts/sanity.sh`, which performs steps 3–4.

## Conventions

- `gofmt` is law: tabs, standard layout, no hand-formatting.
- `go vet` clean before every commit.
- Prefer the standard library; a new dependency needs a stated reason.
- `go generate` runs arbitrary code — review before running.
- Keep diffs surgical; verify stdlib behavior against pkg.go.dev and
  go.dev docs before asserting it.

## Bundled resources

- `references/go-toolchain.md` — install, module setup, command table,
  gopls, official docs.
- `scripts/sanity.sh` — executable gate: gofmt cleanliness + `go vet`.
- `assets/golangci-starter.yml` — optional stricter lint config; copy to
  the project root as `.golangci.yml` to use (requires golangci-lint).
