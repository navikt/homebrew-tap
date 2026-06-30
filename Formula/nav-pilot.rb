class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.30-092135-cb2b23e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.30-092135-cb2b23e/nav-pilot-darwin-arm64"
      sha256 "451a2a215822673188103d6df975fc7be31026e2800e10fdd0b93ee5ed0058af"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.30-092135-cb2b23e/nav-pilot-darwin-amd64"
      sha256 "57473cc36464a16109413540c6ef0b6d1d5636ac0d3f0dd2ac10efdfbeb3bfba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.30-092135-cb2b23e/nav-pilot-linux-arm64"
      sha256 "177a707f82496b3b214561cd480ce2e69ca60fd3b4eed7e60dc45309069a2ff6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.30-092135-cb2b23e/nav-pilot-linux-amd64"
      sha256 "f4110699ca5eb092d3591dd73b2a628cfc0d53deca4405a6f16f368b83fdebbd"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
