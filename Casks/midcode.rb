cask "midcode" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "70c35ebf80667d0032e60e6d8b7a9330bc770a6185e3c09b5cbf062bd09682bb",
         intel: "d65784424294ec8a58d94bdc0bce2fb41da82cc8c0c4e0b8f72979abb0968eff"

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
