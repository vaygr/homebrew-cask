cask "outguess" do
  version "1.1.6"
  sha256 :no_check

  url "https://www.rbcafe.com/download/outguess.zip",
      user_agent: :fake
  name "Outguess"
  homepage "https://www.rbcafe.com/software/outguess/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)+)/i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :el_capitan"

  app "Outguess.app"

  zap trash: [
    "~/Library/Application Support/com.rbcafe.Outguess",
    "~/Library/Saved Application State/com.rbcafe.Outguess.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
