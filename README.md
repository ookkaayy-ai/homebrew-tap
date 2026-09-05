# Ookkaayy Homebrew Tap

Homebrew packages for the Ookkaayy local-first Markdown applications.

## Install

```sh
brew tap ookkaayy-ai/tap
brew trust ookkaayy-ai/tap
brew install --cask ookkaayy-content
brew install --cask ookkaayy-search
brew install --cask ookkaayy-version
```

Install only the products you need. Homebrew verifies each versioned download against the checksum recorded in its Cask.

## Install the CLI, headless API, and MCP servers

```sh
brew install --cask ookkaayy-content-cli
brew install --cask ookkaayy-search-cli
brew install --cask ookkaayy-version-cli
```

The CLI Casks install `ookkaayy-content`, `ookkaayy-search`, and
`ookkaayy-version` on `PATH`. Each command includes `doctor`, `serve`, and
`mcp`; Search also includes scriptable collection and retrieval commands.

Version 0.1.0 supports Apple-silicon Macs running macOS 11 or newer. These
early binaries are ad-hoc signed and not yet notarized. macOS quarantines them
after Homebrew downloads them. After reviewing this warning, explicitly allow
the installed commands once:

```sh
xattr -d com.apple.quarantine "$(brew --prefix)/bin/ookkaayy-content"
xattr -d com.apple.quarantine "$(brew --prefix)/bin/ookkaayy-search"
xattr -d com.apple.quarantine "$(brew --prefix)/bin/ookkaayy-version"
```

Developer ID signing and notarization will remove this temporary step in a
later release.

## Use the CLI

```sh
ookkaayy-content doctor
ookkaayy-search add /absolute/path/to/markdown --name "Notes"
ookkaayy-search search "release checklist"
ookkaayy-version doctor
```

Run a versioned HTTP API without the browser interface:

```sh
ookkaayy-search --no-web serve
```

Global options such as `--data-dir`, `--bind`, and `--no-web` must appear
before the subcommand. Run any product command with `--help` for its complete
option list.

## Connect an MCP client

Each product has its own standard-input/output MCP server:

```sh
ookkaayy-content --data-dir /path/to/content-state mcp
ookkaayy-search --data-dir /path/to/search-state mcp
ookkaayy-version --data-dir /path/to/version-state mcp
```

Search MCP is always read-only. Content and Version also start read-only;
place `--allow-mcp-writes` before `mcp` only when the client should be allowed
to mutate content or history.

## Upgrade or remove

```sh
brew update
brew upgrade --cask ookkaayy-search-cli
brew uninstall --cask ookkaayy-search-cli
```

## License

The CLI archives include the Ookkaayy Proprietary Software License v1.0.
Copyright © 2026 Simon Chong. The license grants worldwide personal and
internal business use; redistribution and hosted third-party service use are
not permitted. Third-party components remain under their respective licenses.

Product documentation and direct downloads are available at <https://shmcsensei.github.io/ookkaayy-website/>.
