class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.25-183628-4ae8551"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-183628-4ae8551/nav-pilot-darwin-arm64"
      sha256 "da8fcfac2251d0d9baf54021191553ce6b9c12f9e5f128b1b7f7b2a714a7d761"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-183628-4ae8551/nav-pilot-darwin-amd64"
      sha256 "2e81c124f2ead29ab82dff32a02bcb2d3c35e54f0651f103cd5948ebcf92f892"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-183628-4ae8551/nav-pilot-linux-arm64"
      sha256 "568b708404c364ac63772f919d1b95222866718089cf4433ddc20464a7f2b6c1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-183628-4ae8551/nav-pilot-linux-amd64"
      sha256 "37a9c2d0ea36c43667fa25485220d80e1e7dd8d051f3e4ea5b742875a85d5014"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
