cask "menubar-stats" do
  version "3.9"
  sha256 :no_check

  url "https://seense.com/menubarstats/updateapp/mbs.zip"
  name "MenuBar Stats"
  desc "System monitor with temperature & fans plugins"
  homepage "https://seense.com/menubarstats/"

  livecheck do
    url "https://www.seense.com/menubarstats/updateapp/appcast.xml"
    strategy :sparkle, &:short_version
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "MenuBar Stats.app"

  zap trash: [
    "~/Library/Application Scripts/3EYN7PPTPF.com.fabriceleyne.menubarstats",
    "~/Library/Application Scripts/com.fabriceleyne.menubarstats*",
    "~/Library/Containers/com.fabriceleyne.menubarstats*",
    "~/Library/Group Containers/3EYN7PPTPF.com.fabriceleyne.menubarstats",
    "~/Library/Group Containers/3EYN7PPTPF.com.fabriceleyne/com.fabriceleyne.menubarstats",
  ]
end
