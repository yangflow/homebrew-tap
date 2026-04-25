cask "gitrelay" do
  version "0.3.1"
  sha256 "8efe7b0b9c1d9adcb2b90e1850d145a548589460d060fcced84ea2b4d4dc2b05"

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