class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.13-095023-a1b831c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-095023-a1b831c/nav-pilot-darwin-arm64"
      sha256 "59f7ca65b119bdd2b7cdc6362c9f24ff33a328a814d4f886cdd8173327d7625c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-095023-a1b831c/nav-pilot-darwin-amd64"
      sha256 "3e37687d06292de7534282348dad9ecb4a1443f97a16d3e812b6d515d6392059"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-095023-a1b831c/nav-pilot-linux-arm64"
      sha256 "f98625d3448c02c3009b1b5bacbd722d8d773800c6370bbe580d7b9e4986b1ee"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-095023-a1b831c/nav-pilot-linux-amd64"
      sha256 "2738d9a4524e5872c225fedb51c0d73e35ec258c750d83dbaf733e0b3e99f540"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
