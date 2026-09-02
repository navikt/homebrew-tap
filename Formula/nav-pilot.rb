class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.02-222435-fd6e7f7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-222435-fd6e7f7/nav-pilot-darwin-arm64"
      sha256 "896e8f1734d7e4652f2a57bf0aabc9bab4efe5ed16be9ed85bcb0c31d6983ecd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-222435-fd6e7f7/nav-pilot-darwin-amd64"
      sha256 "42871ff467536216dbea35e9af05d09e2d7d17fdcbed1faaf7145da966a98ec6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-222435-fd6e7f7/nav-pilot-linux-arm64"
      sha256 "77c4f3621a8eb7531a64e13ffbc558c9da3d510ae6e12ef16c7573a61c0020bc"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.02-222435-fd6e7f7/nav-pilot-linux-amd64"
      sha256 "a9064e438c4c1d379d2f3c56f9552d19ea8d8d42cf61786ad165ace8ee28b85f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
