cask "gitrelay" do
  version "0.2.1"
  sha256 "34cf2b59f1c275adb85359fab0a2cb68cc153411e28579037d426b9cdd9ba05b"

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