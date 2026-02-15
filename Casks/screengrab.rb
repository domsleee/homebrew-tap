cask "screengrab" do
  version "0.1.4-Beta"
  sha256 "709d8ca23d5f497733b4b8d134c8f30fe7b15f4d09e778a56f5cc96716dea919"

  url "https://github.com/domsleee/ScreenGrab/releases/download/v0.1.4-Beta/ScreenGrab-v0.1.4-Beta.zip"
  name "ScreenGrab"
  desc "ShareX-like screen capture for macOS"
  homepage "https://github.com/domsleee/ScreenGrab"

  depends_on macos: ">= :ventura"

  postflight do
    system "xattr -dr com.apple.quarantine #{appdir}/ScreenGrab.app"
  end

  app "ScreenGrab.app"
end
