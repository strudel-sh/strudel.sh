#!/bin/sh
# Install the versioned Git hooks for this clone only.
#
# Points the local (repository-scoped) core.hooksPath at .githooks so the
# pre-commit and pre-push hooks tracked in this repository are used.
set -e

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "error: not inside a Git repository" >&2
    exit 1
fi

repo_root=$(git rev-parse --show-toplevel)

if [ ! -d "$repo_root/.githooks" ]; then
    echo "error: $repo_root/.githooks not found" >&2
    exit 1
fi

git -C "$repo_root" config --local core.hooksPath .githooks
echo "Installed: local core.hooksPath set to .githooks"
