class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.05-151219-a1035b0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-151219-a1035b0/nav-pilot-darwin-arm64"
      sha256 "6ece90273cd13f67ee569a2133a120f3dd46d26cf34652f5439325bd8b16ae08"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-151219-a1035b0/nav-pilot-darwin-amd64"
      sha256 "ab0c0151c8ad2a965d95fad14bdf08c32b37411129e4b1a1261c84f03180fd99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-151219-a1035b0/nav-pilot-linux-arm64"
      sha256 "15c06ab8e90fecb00eecd7a62802ff4da10abf790e401838a983f15c41295b3e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-151219-a1035b0/nav-pilot-linux-amd64"
      sha256 "f64d56396dfe467beba52fb39acde478e299d57832de64eafaa7bcf4086f1c48"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
