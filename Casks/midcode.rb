cask "midcode" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "a1c671919ba3b0e8ffad16a01f571a8584f9397fbe4ae04202cf465ed1b03feb",
         intel: "993247d311fde9ad11efbefb021670e2d44c4c89a3c8537b4ce4fa4d6aa03039"

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
