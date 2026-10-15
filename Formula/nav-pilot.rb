class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.15-083834-f0e6cf6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-083834-f0e6cf6/nav-pilot-darwin-arm64"
      sha256 "68071d37ca79dd5be568a0151506324356985ebace6b990d8464db64088bf40d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-083834-f0e6cf6/nav-pilot-darwin-amd64"
      sha256 "5d1c0371b0b907a759e17d131b3cbab39b6d17fcb4624701def56de8aaf389c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-083834-f0e6cf6/nav-pilot-linux-arm64"
      sha256 "f1e3cfa7c3954227724da3d058167892d71f9eb116e9a6af06b981dfc18fed84"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.15-083834-f0e6cf6/nav-pilot-linux-amd64"
      sha256 "bd09c3ca1293b16c230e01ff79bf23b1dc2c8019e768b95469e2e944af4f11e4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
