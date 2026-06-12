class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.12-113744-10c4a25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.12-113744-10c4a25/nav-pilot-darwin-arm64"
      sha256 "14e6bd2092824e5459246188baa13eee2100727dd21abb2e012d64533282404a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.12-113744-10c4a25/nav-pilot-darwin-amd64"
      sha256 "f5ac6f808ac1c9ed831685f93ca629662d2069be1817c8250744813a1b849a3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.12-113744-10c4a25/nav-pilot-linux-arm64"
      sha256 "0d29a17d525265f77fa40e32fc85cca9741c8a6456717cbcce41a3852e36cac9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.12-113744-10c4a25/nav-pilot-linux-amd64"
      sha256 "6b1e100ac1d4c1d949dd6205cfee85c49dd3c03c72baa6209a087b51ca4d02fd"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
