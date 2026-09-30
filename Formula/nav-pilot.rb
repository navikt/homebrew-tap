class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-183615-363b904"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-183615-363b904/nav-pilot-darwin-arm64"
      sha256 "1dbdabf290af3d0c505a5303c46b9e38beb659017a6bd60ff0ec92d53a467cdd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-183615-363b904/nav-pilot-darwin-amd64"
      sha256 "dcb1d254ded860c3bf4dfb7f19b2bcaedeac21f76188898ecc0b51ef876c4be9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-183615-363b904/nav-pilot-linux-arm64"
      sha256 "fae4aeb531365602a2f3f4b0f17088cc904380d7eb47fb815721ad6197655e0c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-183615-363b904/nav-pilot-linux-amd64"
      sha256 "806215695cf240aba1e88e49ffc9dd3a9aa78274194d74dd0e0bca1947f3aa27"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
