cask "ookkaayy-content-cli" do
  version "0.1.0"
  sha256 "eebe48fd6ee988ceea13fa5bcbe3b8a9d48e96f90267df35e4c30667e1f3205b"

  url "https://github.com/ookkaayy-ai/homebrew-tap/releases/download/cli-v#{version}/ookkaayy-content-cli-#{version}-aarch64-apple-darwin.tar.gz"
  name "Ookkaayy Content CLI"
  desc "Headless Markdown authoring, HTTP API, and MCP server"
  homepage "https://shmcsensei.github.io/ookkaayy-website/content/"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  binary "ookkaayy-content-cli-#{version}/ookkaayy-content"
end
