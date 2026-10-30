class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.30-141757-ac15a61"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.30-141757-ac15a61/nav-pilot-darwin-arm64"
      sha256 "99a699113a8388350c5070ae69b210419c771f4e9301599592b2a40344458e43"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.30-141757-ac15a61/nav-pilot-darwin-amd64"
      sha256 "3aa407d1cb96d3f2fb4e513d1fc2d7d4acca5265975694e7722754cd6b30471f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.30-141757-ac15a61/nav-pilot-linux-arm64"
      sha256 "4d6230d1e18b3abe07630a213b1dbc9bf8be0dca8560b8db11c049b0be37754b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.30-141757-ac15a61/nav-pilot-linux-amd64"
      sha256 "b0e4ad222e0117744edc46046e47f039174e7d95e0243713fcf851b793becc20"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
