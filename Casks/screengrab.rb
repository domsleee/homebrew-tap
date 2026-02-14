cask "screengrab" do
  version "0.1.0-Beta"
  sha256 "c53fbe98863e62b034c6f9d85f44f0bcaf8a95b511377abbee700242c732c779"

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
