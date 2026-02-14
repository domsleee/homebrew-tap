cask "screengrab" do
  version "0.1.0-Beta"
  sha256 "6c98fac68273f8f26a143dd5c5e453e5b287ee31f0faaec434c0d0befd7799c5"

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
