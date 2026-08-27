class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.27-095853-2e0b029"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-095853-2e0b029/nav-pilot-darwin-arm64"
      sha256 "f83241ac5a0c526d633b0be78f62615b1199ad0416ac8a6fb5ae57006a8954a7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-095853-2e0b029/nav-pilot-darwin-amd64"
      sha256 "1281d0561a49506ddaf209cb5f69cd7099f86eff2650905dd36376cda5cd905a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-095853-2e0b029/nav-pilot-linux-arm64"
      sha256 "b7d06306e112b10feba538b602e54c4f934aa9fbf9ae6b29d807df495b4401af"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-095853-2e0b029/nav-pilot-linux-amd64"
      sha256 "c9ec8ca823cb845fe45b5feafe40baa2ede7d04b285002f5c895242b9adff5f0"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
