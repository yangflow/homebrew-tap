cask "gitrelay" do
  version "0.4.0"
  sha256 "4136d558b4f350ddefab67fd0cc7c64032d82ef9c83b3d0d3f16957ff04606f4"

  url      "https://github.com/yangflow/gitrelay/releases/download/v#{version}/GitRelay-#{version}.dmg"
  name     "GitRelay"
  desc     "Local-first Git repository mirroring workspace for macOS"
  homepage "https://github.com/yangflow/gitrelay"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "GitRelay.app"

  binary "#{appdir}/GitRelay.app/Contents/MacOS/gitrelayctl", target: "gitrelayctl"

  zap trash: [
    "~/.local/share/gitrelay",
    "~/Library/Caches/com.yangflow.gitrelay",
    "~/Library/Preferences/com.yangflow.gitrelay.plist",
  ]
end