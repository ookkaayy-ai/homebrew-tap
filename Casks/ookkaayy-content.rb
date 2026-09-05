cask "ookkaayy-content" do
  version "0.1.0"
  sha256 "bfbb10a730d7d3b9c0ea4574f30748af36a313ba773e9a591bf902d3d3af3887"

  url "https://github.com/ookkaayy-ai/homebrew-tap/releases/download/v#{version}/ookkaayy-content-#{version}-aarch64.dmg"
  name "Ookkaayy Content"
  desc "Local-first Markdown authoring and content management"
  homepage "https://shmcsensei.github.io/ookkaayy-website/content/"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Ookkaayy Content.app"
end

