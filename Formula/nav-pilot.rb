class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.15-131923-51be240"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.15-131923-51be240/nav-pilot-darwin-arm64"
      sha256 "de2312dad7f9f5a92ef8e44ba776c891aadb5a7195e346338d50116efb43b235"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.15-131923-51be240/nav-pilot-darwin-amd64"
      sha256 "b2fcc9454770ec94f83ec717539dadeb86ba35c1646476ace5c99157e6a8b5a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.15-131923-51be240/nav-pilot-linux-arm64"
      sha256 "2f9a6aed59cd9382cf6f7df5f6e4d764a6861d2d3279fed2ea3fa203cd1826ad"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.15-131923-51be240/nav-pilot-linux-amd64"
      sha256 "bf0ea581e117bde61a435993e41650dc09a0a3ddd5c27349bde8071ac88f0c83"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
