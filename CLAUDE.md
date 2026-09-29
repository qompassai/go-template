# CLAUDE.md

Project instructions for Claude Code working in this repository — a
project instantiated from the Qompass AI Go template. `AGENTS.md` carries
the same instructions for other agent CLIs.

## Project

Go starter in the standard Qompass AI layout: runnable starter code,
tooling notes, and docs. Keep the template generic; project specifics
belong in the instantiated repository.

## Layout

- `src/` — starter source; `src/00_hello.go` runs with the stock toolchain
- `examples/` — example programs
- `tests/` — tests; `tests/TESTING.md` records how to run them
- `docs/` — `GUIDE.md`, `TOOLCHAIN.md`, `NEOVIM.md`
- `.opencode/skills/go-template/` — Go workflow skill (gates, commands,
  Tiger Style Go conventions)

## Commands

- `go mod init <module-path>` — first step; the template ships no `go.mod`
- `go run src/00_hello.go` — run the starter
- `go build ./...` — build; `go vet ./...` — analyze (keep clean)
- `go test ./...` — test; `gofmt -l .` — must print nothing
- `scripts/sanity.sh` (in the skill) runs the gofmt + vet gates

Install: https://go.dev/dl/. LSP: `gopls`.

## Conventions

- `gofmt` is law (tabs, standard layout).
- Tiger Style Go: safety-first, explicit contracts, bounded work. Use the
  `tiger-style-go` skill when writing or reviewing Go.
- Surgical diffs; verify stdlib behavior against pkg.go.dev / go.dev docs
  before asserting it.

## Boundaries

- Never `rm -rf` outside the project root.
- `go generate` runs arbitrary code — review before running.
- Do not commit binaries, `vendor/`, or editor swap files.
