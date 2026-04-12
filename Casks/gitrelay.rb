cask "gitrelay" do
  version "0.2.2"
  sha256 "909d47c522ee5228634495268529aacd58ed6d7a981feb4c5918317760035445"

  url      "https://github.com/yangflow/gitrelay/releases/download/v#{version}/GitRelay-#{version}.dmg"
  name     "GitRelay"
  desc     "Mirror any Git repository to any other Git repository, automatically"
  homepage "https://github.com/yangflow/gitrelay"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "GitRelay.app"

  zap trash: [
    "~/.local/share/gitrelay",
    "~/Library/Caches/com.yangflow.gitrelay",
    "~/Library/Preferences/com.yangflow.gitrelay.plist",
  ]
end