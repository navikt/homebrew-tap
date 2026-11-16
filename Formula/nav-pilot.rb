class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.16-144825-2247ee5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-144825-2247ee5/nav-pilot-darwin-arm64"
      sha256 "ee3d28196f88be623c0096618b813e2c30d8d8f1ef6ade2dc0950cb3db8c86a6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-144825-2247ee5/nav-pilot-darwin-amd64"
      sha256 "1a2636557c9b11aac77f7f0d092088765c43568a56fc531c252121d3f73fd9f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-144825-2247ee5/nav-pilot-linux-arm64"
      sha256 "93f6ffcd1c1de6877cceec364ad24498ade93e3fadae09bb74f2fdd9c3a59b12"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-144825-2247ee5/nav-pilot-linux-amd64"
      sha256 "a4b4453c88d827375072676a8d0c3c1a8edcb9b6b12d8b9c2b8dc9ea0eeb0026"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
