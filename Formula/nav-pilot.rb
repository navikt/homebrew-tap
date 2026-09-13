class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.13-122307-febd545"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-122307-febd545/nav-pilot-darwin-arm64"
      sha256 "0b03b8fffb896ee67d9623a72cf2b4ad8c4d9cbd34bcce6c0f26debde89049c2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-122307-febd545/nav-pilot-darwin-amd64"
      sha256 "4ba8833630a4e85d8bcc075111630d223213664af5a5b91dfae0079c9e88d442"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-122307-febd545/nav-pilot-linux-arm64"
      sha256 "101d97df09e70e967785860061abd93d41d46423e4db9c132a025ee2fca76dba"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.13-122307-febd545/nav-pilot-linux-amd64"
      sha256 "ce2d54bbc679dc2a032c768c9ff726984690a94af89fcbd51bf96f7250a92f72"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
