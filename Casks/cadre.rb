cask "cadre" do
  version "1.0.0-rc.34"
  sha256 "af2bafd65f1f2c45f9dac29c24a2401b5ace2ed95ae1c74b47e2ad56e59a07dc"

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
