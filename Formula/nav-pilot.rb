class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-052922-e0c1bf4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-052922-e0c1bf4/nav-pilot-darwin-arm64"
      sha256 "7b0b878a492e5c741c44a84bd048c1ac15e5cadea39fdececd44684f3f51b8b1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-052922-e0c1bf4/nav-pilot-darwin-amd64"
      sha256 "6ccd2a682aac5446b9d5f30ce90aff3f8acfc0fc0dec218899eb3fdb1ad2c8d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-052922-e0c1bf4/nav-pilot-linux-arm64"
      sha256 "778e47babc51c2a065f4f75dcc9c0e6ad68f49284f3552e5e30e1028e8438b54"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-052922-e0c1bf4/nav-pilot-linux-amd64"
      sha256 "596883cbdf2d5ecf55912ebad556b83fb0c8278e7fda6d26ef6e8a2e24355868"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
