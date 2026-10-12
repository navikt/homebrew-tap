class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.12-093642-995eb51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-093642-995eb51/nav-pilot-darwin-arm64"
      sha256 "712978ee3ee1136fa65006a81f917df39389c7ed609e5d7c37b552a7139184e6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-093642-995eb51/nav-pilot-darwin-amd64"
      sha256 "cc6a0bf86dcfe51cfb387e881768f4923f0ed224039d2a38edb973748b2ce621"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-093642-995eb51/nav-pilot-linux-arm64"
      sha256 "5c549952113ce0cd788a2451bfeaa1768a1d7e288097741f5bed7557c5e62096"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-093642-995eb51/nav-pilot-linux-amd64"
      sha256 "97cc4fffc5ca163e00ed8998c675554d2813fe0e1766c7433a7672483dd7b1cd"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
