class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.02-075554-264c31a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.02-075554-264c31a/nav-pilot-darwin-arm64"
      sha256 "c9e38f8a25f7c80c1da0d9ded1f1a9400cebd98009ffeb3c209d1fc6efcb5b04"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.02-075554-264c31a/nav-pilot-darwin-amd64"
      sha256 "fc3fff56a73f0030fa3d45ad5bbab9e15076b56977aaac7ec6cdc71ae95d9f50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.02-075554-264c31a/nav-pilot-linux-arm64"
      sha256 "302d85faf6d3e1a4c8bcddf529cca7430f765cddc046d9e7d4d17255850a8a97"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.02-075554-264c31a/nav-pilot-linux-amd64"
      sha256 "bc57f571cc9dea55a39008db2a147e9eeea4928cb078437076964392f685aa70"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
