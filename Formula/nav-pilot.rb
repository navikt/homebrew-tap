class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-230221-a9aa43d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-230221-a9aa43d/nav-pilot-darwin-arm64"
      sha256 "0c81bc0ed0f5781244121624d30e2aa422fecb4252bcf22b66d5d59dfa26116d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-230221-a9aa43d/nav-pilot-darwin-amd64"
      sha256 "9ec59c2a36622d7b77d20226ddd4833b3785bca6a600e2f594786d3922a97f91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-230221-a9aa43d/nav-pilot-linux-arm64"
      sha256 "90c99a50a385d580f81a86e2d5bf7704130b4699a88d0f7d751c94589f0195e5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-230221-a9aa43d/nav-pilot-linux-amd64"
      sha256 "987525d72ddca3ba6292e3a3cc440c472a21a79eab21706ce386594ece433dca"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
