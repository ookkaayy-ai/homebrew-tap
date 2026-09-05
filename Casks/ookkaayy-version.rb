cask "ookkaayy-version" do
  version "0.1.0"
  sha256 "c90fa6b8628b2775a6a162bca24744aa0fc05a3ef40ab6823013e6a4ee3b2275"

  url "https://github.com/ookkaayy-ai/homebrew-tap/releases/download/v#{version}/ookkaayy-version-#{version}-aarch64.dmg"
  name "Ookkaayy Version"
  desc "Understandable Git-backed history for Markdown"
  homepage "https://shmcsensei.github.io/ookkaayy-website/version/"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Ookkaayy Version.app"
end
