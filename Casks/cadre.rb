cask "cadre" do
  version "1.0.0-rc.32"
  sha256 "1d46187007dd78fe7ccc50dfc461a2176ffab88e75fc28d790b6c93f7f6304fd"

  url "https://github.com/ArthurBrioche/cutro-releases/releases/download/v#{version}/CADRE.dmg",
      verified: "github.com/ArthurBrioche/cutro-releases/"
  name "Cadre"
  desc "AI screen recorder with non-destructive editing and local MCP automation"
  homepage "https://cadre.cam/"

  livecheck do
    url "https://cadre.cam/CADRE.version"
    regex(/^v?(\d+(?:\.\d+)+(?:-rc\.\d+)?)$/i)
    strategy :page_match
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Cadre.app"

  zap trash: [
    "~/Library/Caches/com.cutro.app",
    "~/Library/HTTPStorages/com.cutro.app",
    "~/Library/Preferences/com.cutro.app.plist",
    "~/Library/Saved Application State/com.cutro.app.savedState",
  ]
end
