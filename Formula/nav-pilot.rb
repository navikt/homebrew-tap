class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.29-125536-493f70b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.29-125536-493f70b/nav-pilot-darwin-arm64"
      sha256 "b9eec4bcd2862dcab9e94b7d7f3425190b50a1dcfd52fdec20da153de16c8b38"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.29-125536-493f70b/nav-pilot-darwin-amd64"
      sha256 "ab8a9d0d8a01fb1688b1da60b1645edf40afbf9939720af52a3461d5d0e6ee30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.29-125536-493f70b/nav-pilot-linux-arm64"
      sha256 "2c1094f7a2a9575f2ef963d7caf6e753666dc5c05c222e832f0b35dd8b22fb38"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.29-125536-493f70b/nav-pilot-linux-amd64"
      sha256 "6311493786d0c2ea1b849c54ad5814e5f4de74089a6d2b7448a598e97dc33463"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
