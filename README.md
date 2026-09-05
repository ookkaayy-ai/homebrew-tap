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

## Upgrade or remove

```sh
brew update
brew upgrade --cask ookkaayy-search
brew uninstall --cask ookkaayy-search
```

Product documentation and direct downloads are available at <https://shmcsensei.github.io/ookkaayy-website/>.
