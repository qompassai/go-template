# AGENTS.md

Project instructions for AI coding agents working in this repository — a
project instantiated from the Qompass AI Go template. Read by Codex,
OpenCode, Claude Code, and other AGENTS.md-compatible tools.

## What this project is

A Go starter in the standard Qompass AI layout: runnable starter code,
tooling notes, and docs. It is a *template* — keep it generic;
project-specific details belong in the instantiated repository.

## Layout

- `src/` — starter source. `src/00_hello.go` runs with the stock toolchain.
- `examples/` — example programs.
- `tests/` — tests; `tests/TESTING.md` records how to run them.
- `docs/` — `GUIDE.md` (usage), `TOOLCHAIN.md` (install/build/lint),
  `NEOVIM.md` (editor integration).
- `.opencode/skills/go-template/` — the Go workflow skill: build, test,
  vet, format, and Tiger Style Go conventions.

## Toolchain

- Install: https://go.dev/dl/
- The template ships without `go.mod`. First step in an instantiated
  project: `go mod init <module-path>`.
- `go run src/00_hello.go` — run the starter
- `go build ./...` — build everything
- `go vet ./...` — static analysis (must be clean)
- `go test ./...` — run tests
- `gofmt -l .` — must print nothing (no unformatted files)
- LSP: `gopls`

`scripts/sanity.sh` in the skill runs the gofmt + vet gates.

## Conventions

- `gofmt` is law: tabs, standard layout, no hand-formatting.
- Write Go in Tiger Style: safety-first, explicit contracts, bounded
  work, disciplined ownership. See the `tiger-style-go` skill and this
  skill's references when writing or reviewing Go.
- Keep diffs surgical; every changed line traces to the request.
- Verify stdlib behavior against primary sources (pkg.go.dev, go.dev
  docs) before asserting it.

## Boundaries

- Never `rm -rf` outside the project root.
- `go generate` executes arbitrary code — review before running.
- Do not commit binaries, `vendor/`, or editor swap files unless the
  project explicitly requires them.
