cask "midcode" do
  arch arm: "arm64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "82a379bc03048db84589d6f8632f70d0af051fe44866b5bed13eda6d4262f82e",
         intel: "93a20ee5041c9d8e67546a5e01d7dac91ac12d25995dfbca5891dd4c031bbe0b"

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
