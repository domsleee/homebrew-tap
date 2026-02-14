cask "screengrab" do
  version "0.1.0-Beta"
  sha256 "0707e7406efcff856509efa287a453a2cfc33bd2ba423f975c7937c5e5f3dfa1"

  url "https://github.com/domsleee/screen-grab/releases/download/v0.1.0-Beta/ScreenGrab-v0.1.0-Beta.zip"
  name "ScreenGrab"
  desc "ShareX-like screen capture for macOS"
  homepage "https://github.com/domsleee/screen-grab"

  depends_on macos: ">= :ventura"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/ScreenGrab.app"
  end

  app "ScreenGrab.app"
end
