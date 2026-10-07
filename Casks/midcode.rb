cask "midcode" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "000ec98814f835c5b8b28e010e68bac9894dc2ad7a746b46e8d5bfb3bc6ff1fa",
         intel: "0ab8444e4dd1f1d5170336ea81f94d72e5f5cf55d6380fc6d6d8a30f28200fdb"

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
