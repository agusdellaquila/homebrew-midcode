cask "midcode" do
  arch arm: "arm64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "ab23dc52209016bf295177574e344f35088abc6d0864248014df9a4816e191d2",
         intel: "75233592798c81cebf541691103cf837eab587d2ee3c128d92fcacf7aa5fcca6"

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
