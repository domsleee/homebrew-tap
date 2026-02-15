cask "screengrab" do
  version "0.1.2-Beta"
  sha256 "9af2ff5f65438a70fe13e72668fc5d848d49c1871c5ac3afac01c466e455b579"

  url "https://github.com/domsleee/ScreenGrab/releases/download/v0.1.2-Beta/ScreenGrab-v0.1.2-Beta.zip"
  name "ScreenGrab"
  desc "ShareX-like screen capture for macOS"
  homepage "https://github.com/domsleee/ScreenGrab"

  depends_on macos: ">= :ventura"

  postflight do
    system "xattr -dr com.apple.quarantine #{appdir}/ScreenGrab.app"
  end

  app "ScreenGrab.app"
end
