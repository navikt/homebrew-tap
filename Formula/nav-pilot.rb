class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.27-200204-6e49d0e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-200204-6e49d0e/nav-pilot-darwin-arm64"
      sha256 "72e5f256e073ac42ed81181a916c47b0c32064dc4e1462c0f62fa2392fa3b46e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-200204-6e49d0e/nav-pilot-darwin-amd64"
      sha256 "991a43b0c33593b775824bf8831b467cee426404db73ba81ef5c209ff751635d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-200204-6e49d0e/nav-pilot-linux-arm64"
      sha256 "fadba1eff795aeafb2f0b14d91ae3aa67ac69859000561673d9551d59c43808d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-200204-6e49d0e/nav-pilot-linux-amd64"
      sha256 "fefcbc0e31b28899a5cb0295f29bc67e9533cefe900e0715f7c2d5606547cc30"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
