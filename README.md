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

Standalone CLI and headless Casks will be added when those release archives are available.

## Upgrade or remove

```sh
brew update
brew upgrade --cask ookkaayy-search
brew uninstall --cask ookkaayy-search
```

Product documentation and direct downloads are available at <https://shmcsensei.github.io/ookkaayy-website/>.
