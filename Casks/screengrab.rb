cask "screengrab" do
  version "0.1.1-Beta"
  sha256 "c5faf19b397e62dddf2b7ddb4f8f12cc3f63955a528e41145679f0bb2a3f2b1b"

  url "https://github.com/domsleee/ScreenGrab/releases/download/v0.1.1-Beta/ScreenGrab-v0.1.1-Beta.zip"
  name "ScreenGrab"
  desc "ShareX-like screen capture for macOS"
  homepage "https://github.com/domsleee/ScreenGrab"

  depends_on macos: ">= :ventura"

  postflight do
    system "xattr -dr com.apple.quarantine #{appdir}/ScreenGrab.app"
  end

  app "ScreenGrab.app"
end
