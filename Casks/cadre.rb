cask "cadre" do
  version "1.2.5"
  sha256 "c9871bce56016dbec596d391eaa7219fab6a16bdf3f8e351b131cacc8751b609"

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
