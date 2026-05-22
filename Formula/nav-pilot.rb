class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.22-103454-7acbe01"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.22-103454-7acbe01/nav-pilot-darwin-arm64"
      sha256 "56060509743f853c5078d529b2bacb243a2ba82b73023b2902f603c4eecf2d2b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.22-103454-7acbe01/nav-pilot-darwin-amd64"
      sha256 "626aa867b882c7a5927228385dd171c2330cacbd2b59fceb3837851d102e8495"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.22-103454-7acbe01/nav-pilot-linux-arm64"
      sha256 "b66400c9b5e9976971311857f7a60d4743071e0102d397c81edb3b45878d4cd6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.22-103454-7acbe01/nav-pilot-linux-amd64"
      sha256 "7903ec11ce3ce827bf17ebbd32a360ed9e07f9b0696de883405307cb57fb6cd6"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
