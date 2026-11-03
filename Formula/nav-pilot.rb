class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.03-092240-f3ff8e1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.03-092240-f3ff8e1/nav-pilot-darwin-arm64"
      sha256 "af4c2a31322a7eddd92b9a788cb276affbffff60597d2041bb756f6e3cd3a3c3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.03-092240-f3ff8e1/nav-pilot-darwin-amd64"
      sha256 "8f426e145f28440f5df30553823b31f8f99b0d67ef65299da03ff26f4335742b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.03-092240-f3ff8e1/nav-pilot-linux-arm64"
      sha256 "064eea054a2b9d97b68ef9dcd8c733d9b6fa2d774d5257a6cfa169324d73ed08"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.03-092240-f3ff8e1/nav-pilot-linux-amd64"
      sha256 "bc234c559ddb8be28f4ffdf54cf07f5fd067100c7fbcdfd8f785349b3f83eb24"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
