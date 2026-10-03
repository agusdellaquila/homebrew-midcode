cask "midcode" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "c4a0640bc6d15ef00dbc5d1b0fcbc60ce11de338e31ce558dd1402699c3ac020",
         intel: "d58c487e43937638f5f9a6bf5d8a8b7b5a52095e11cf17bc2e5068be6d246514"

  url "https://github.com/agusdellaquila/midcode/releases/download/v#{version}/midcode-#{version}-#{arch}.dmg"
  name "midcode"
  desc "Visual editor for sites built in code"
  homepage "https://midcode.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "midcode.app"

  zap trash: [
    "~/Library/Application Support/midcode",
    "~/Library/Caches/com.akilastudio.midcode",
    "~/Library/Caches/com.akilastudio.midcode.ShipIt",
    "~/Library/Caches/midcode-updater",
    "~/Library/Logs/midcode",
    "~/Library/Preferences/com.akilastudio.midcode.plist",
    "~/Library/Saved Application State/com.akilastudio.midcode.savedState",
  ]
end
