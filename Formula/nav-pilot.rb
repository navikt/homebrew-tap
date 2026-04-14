class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.14-202800-a25f6c3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-202800-a25f6c3/nav-pilot-darwin-arm64"
      sha256 "6bc590acdff6871a0cb9066dd9903569a5f1683134cd9f7cc93178c46da4833e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-202800-a25f6c3/nav-pilot-darwin-amd64"
      sha256 "ccb755c26e01dc8e325935ba297849c0ba5ed669ac33ebb4f130e6654bba5aba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-202800-a25f6c3/nav-pilot-linux-arm64"
      sha256 "5c2bdcb4c41f7885fdf509015b48b80165c94fd44094589a935e1aec4a3ca63d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-202800-a25f6c3/nav-pilot-linux-amd64"
      sha256 "994edb17edad3a30e04617c18b0ec5c4eba2c8af1e603486a060fb1461c6ed83"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
