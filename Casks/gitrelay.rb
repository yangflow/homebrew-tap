cask "gitrelay" do
  version "0.2.3"
  sha256 "35d56b7e93518075e06a3c58e651af4ddc2ca3762a254f164e6c0fe185736859"

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