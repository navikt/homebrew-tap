class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.31-192803-bdea218"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-192803-bdea218/nav-pilot-darwin-arm64"
      sha256 "402d5a8a13b2826fb06bafd4bf0764fbe1ec21e1dcb90d7ff735457fa94ef21a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-192803-bdea218/nav-pilot-darwin-amd64"
      sha256 "902771a31de9f71c209a4b356fe5790128e991731aa213cca591779d3439122a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-192803-bdea218/nav-pilot-linux-arm64"
      sha256 "4da7d0aa8cb9e504df657b52a4e917c7e8a3341e243b8a8286fefb9b7263fba8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-192803-bdea218/nav-pilot-linux-amd64"
      sha256 "35efa8ea34a4d27b767d7ba1c7955fdfafd54073d7e685cfc54cc3c9480e5e10"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
