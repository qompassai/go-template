# Go toolchain reference (go-template)

Command source of truth: `docs/TOOLCHAIN.md`.

## Install

https://go.dev/dl/ — follow the official instructions for your OS.

## Module setup

The template ships without `go.mod`. In an instantiated project, first:

    go mod init <module-path>   # e.g. github.com/<org>/<repo>

## Everyday commands

| Command                  | Purpose                                |
|--------------------------|----------------------------------------|
| `go run src/00_hello.go` | run the starter                        |
| `go build ./...`         | compile all packages                   |
| `go vet ./...`           | static analysis — keep clean           |
| `go test ./...`          | run all tests                          |
| `gofmt -l .`             | list unformatted files (want: empty)   |
| `gofmt -w <file>`        | format a file in place                 |

## Editor / LSP

`gopls` is the Go language server (`gopls serve`). See `docs/NEOVIM.md`
for the Neovim integration notes.

## Official docs

- https://go.dev/doc/ — documentation
- https://pkg.go.dev/ — standard library and package reference
