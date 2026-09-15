# strudel

A minimal Rust CLI that prints `Hello, world!`.

## Prerequisites

- [Rust](https://www.rust-lang.org/tools/install) (stable toolchain with `cargo` and `rustfmt`)

## Install the Git hooks

The repository ships pre-commit (`cargo fmt --check`) and pre-push (`cargo test`)
hooks in `.githooks/`. Install them for your clone (local configuration only):

```sh
./scripts/install-git-hooks.sh
```

## Run

```sh
cargo run --quiet
```

Expected output:

```text
Hello, world!
```

## Test

```sh
cargo test
```
