cask "ookkaayy-version-cli" do
  version "0.1.0"
  sha256 "b5674357b1f8f31cc240013535d556d5febc4079adba2221410dc30618655346"

  url "https://github.com/ookkaayy-ai/homebrew-tap/releases/download/cli-v#{version}/ookkaayy-version-cli-#{version}-aarch64-apple-darwin.tar.gz"
  name "Ookkaayy Version CLI"
  desc "Headless Markdown history, HTTP API, and MCP server"
  homepage "https://shmcsensei.github.io/ookkaayy-website/version/"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  binary "ookkaayy-version-cli-#{version}/ookkaayy-version"
end
