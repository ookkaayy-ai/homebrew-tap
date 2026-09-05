cask "ookkaayy-search-cli" do
  version "0.1.0"
  sha256 "8b465fd46c7ece5c5cb38c224929509ee4f2165b710394d249680c71d68c7e4b"

  url "https://github.com/ookkaayy-ai/homebrew-tap/releases/download/cli-v#{version}/ookkaayy-search-cli-#{version}-aarch64-apple-darwin.tar.gz"
  name "Ookkaayy Search CLI"
  desc "Headless Markdown search, HTTP API, and read-only MCP server"
  homepage "https://shmcsensei.github.io/ookkaayy-website/search/"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  binary "ookkaayy-search-cli-#{version}/ookkaayy-search"

  caveats <<~EOS
    This early binary is ad-hoc signed and not notarized. macOS quarantines it
    after download. After reviewing this warning, explicitly allow it once with:
      xattr -d com.apple.quarantine "#{HOMEBREW_PREFIX}/bin/ookkaayy-search"
  EOS
end
