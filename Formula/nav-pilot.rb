class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.20-130554-27df609"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-130554-27df609/nav-pilot-darwin-arm64"
      sha256 "c301491a1190e8ed0356fd7d2629a88d3caf09c0d2b9cf4fbc4fcac2c8f4cd76"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-130554-27df609/nav-pilot-darwin-amd64"
      sha256 "4936f9b1d42c9898a2b718b6347abae90e98039d15dc1392af0e0cb7796885e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-130554-27df609/nav-pilot-linux-arm64"
      sha256 "fb9e1cfac6705d456105a31aebdc5901b819f22e670a8bc35d4ab32cf733372e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-130554-27df609/nav-pilot-linux-amd64"
      sha256 "0358b0aa23421e336eb2df8c4d02f4738629d614495fa8296bdac9ff77a8d87c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
