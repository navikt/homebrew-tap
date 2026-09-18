class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.18-103546-54547e2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-103546-54547e2/nav-pilot-darwin-arm64"
      sha256 "b2e41ceaa5aed7432f9365fde177fe9b481287ae2358c436d3377e2453380fa1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-103546-54547e2/nav-pilot-darwin-amd64"
      sha256 "a16ad24f26dd105ff9caf2eaeeec1880a6d1b3310baa642c24c11c72765a2cc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-103546-54547e2/nav-pilot-linux-arm64"
      sha256 "5da2e9d1d27af0f981cd7558fa1507831152b828f57f3ff6d5dacec3b2d1de04"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-103546-54547e2/nav-pilot-linux-amd64"
      sha256 "0f4589522a89e47095ce42242722d66b814d566268743edc419c9943cb6b9e3c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
