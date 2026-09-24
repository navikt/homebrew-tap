class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.24-111834-d328ee6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-111834-d328ee6/nav-pilot-darwin-arm64"
      sha256 "0fab4d9633f881a74c572f854aaad708b812165a0807fc74e5a0b3b6d4069c88"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-111834-d328ee6/nav-pilot-darwin-amd64"
      sha256 "557cc563024063e4bf81d98e1f2d5754b95f5c3eac352f62d4f2b3efd16314f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-111834-d328ee6/nav-pilot-linux-arm64"
      sha256 "479d071721891ee34032ff7d983be926f757f77818a4ab8656f4e9b0ca7dc222"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-111834-d328ee6/nav-pilot-linux-amd64"
      sha256 "25e42d2175db0994f8fb69f91cd54368319578f218a048f2f100169b31ce5f00"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
