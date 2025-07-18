cask "zsa-wally" do
  version "2.1.0"
  sha256 "23f2770744800ba2af2f33caa297c6621a6610c4999ad0d3cf7673a5060c2a44"

  url "https://github.com/zsa/wally/releases/download/#{version}-osx/wally-osx-#{version}.dmg",
      verified: "github.com/zsa/wally/"
  name "Wally"
  desc "Flash tool for ZSA keyboards"
  homepage "https://ergodox-ez.com/pages/wally"

  no_autobump! because: :requires_manual_review

  disable! date: "2024-12-16", because: :discontinued, replacement_cask: "keymapp"

  app "Wally.app"

  zap trash: [
    "~/Library/Preferences/com.zsa.wally.plist",
    "~/Library/Saved Application State/com.zsa.wally.savedState",
  ]
end
