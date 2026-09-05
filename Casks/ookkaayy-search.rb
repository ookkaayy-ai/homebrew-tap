cask "ookkaayy-search" do
  version "0.1.0"
  sha256 "2531b6123877ef931a96250cf4f65ea5e6fc6d937a4735b6320f3e529a8c76c3"

  url "https://github.com/ookkaayy-ai/homebrew-tap/releases/download/apps-v#{version}/ookkaayy-search-#{version}-aarch64.dmg"
  name "Ookkaayy Search"
  desc "Private search for Markdown knowledge"
  homepage "https://shmcsensei.github.io/ookkaayy-website/search/"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Ookkaayy Search.app"
end
