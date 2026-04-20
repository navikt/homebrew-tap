class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.20-173757-ca59f01"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-173757-ca59f01/nav-pilot-darwin-arm64"
      sha256 "e3ad3e0422ed9d3b545fb4257a8703bcfd85855b77ce1c2473426b61c9a49516"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-173757-ca59f01/nav-pilot-darwin-amd64"
      sha256 "d16753bf7253131556244b23fd72ba86076f772615e63f621826f43dc6202864"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-173757-ca59f01/nav-pilot-linux-arm64"
      sha256 "57f7648e2c32d855110cac00d3f338775df0c10a38f967bf790c9d085d640eae"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.20-173757-ca59f01/nav-pilot-linux-amd64"
      sha256 "c7f4eb16f71278d334e4dac8056d1928d3d3d1994efdfe5a9d76e826f3b0bc7a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
