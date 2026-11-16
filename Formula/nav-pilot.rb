class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.16-180700-9f6dd3c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-180700-9f6dd3c/nav-pilot-darwin-arm64"
      sha256 "67b9914d10a60cc1417241c06904c4660e295a87f2d3c6071ab73a169e8c686a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-180700-9f6dd3c/nav-pilot-darwin-amd64"
      sha256 "6552b221910048f203ea9a079566229b1aeb9b34934f05400eb9199fa132ace2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-180700-9f6dd3c/nav-pilot-linux-arm64"
      sha256 "c6cad6403d61bf48c3e6ac90a698756f3b76d6c2a5ca9c5f607cf068bec1e2b4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-180700-9f6dd3c/nav-pilot-linux-amd64"
      sha256 "2d8b3d24680871eb50bde26cb790274f66ea6480ba0c029c9cf513ea1f2af089"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
