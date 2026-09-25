cask "cadre" do
  version "1.2.1"
  sha256 "f09fae1228ceeb3edf234c7f551a393ca7078ea35a8bd7fe511d722e35202a38"

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
