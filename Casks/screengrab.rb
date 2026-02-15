cask "screengrab" do
  version "0.1.3-Beta"
  sha256 "055038c2b566707689350db2f64f0fc5865be69c95c9c66a8d236d22381ba914"

  url "https://github.com/domsleee/ScreenGrab/releases/download/v0.1.3-Beta/ScreenGrab-v0.1.3-Beta.zip"
  name "ScreenGrab"
  desc "ShareX-like screen capture for macOS"
  homepage "https://github.com/domsleee/ScreenGrab"

  depends_on macos: ">= :ventura"

  postflight do
    system "xattr -dr com.apple.quarantine #{appdir}/ScreenGrab.app"
  end

  app "ScreenGrab.app"
end
