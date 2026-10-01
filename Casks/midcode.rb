cask "midcode" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "bb708b02e7f91e7cd10567e776ca8ef757b3bed382f5c83a08a883f4c6a7877a",
         intel: "7526470d859a2df5eb578280b3dabbb0be0e77f60036a2b92794f44d21b8e50f"

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
