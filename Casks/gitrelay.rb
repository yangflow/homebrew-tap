cask "gitrelay" do
  version "0.1.0"
  sha256 "11c6994ffc467d2e6f17cad9093d7a944a9199025924798b46a951d5903f5e9d"

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