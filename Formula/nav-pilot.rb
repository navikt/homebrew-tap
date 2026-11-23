class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.23-192648-4667ff7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-192648-4667ff7/nav-pilot-darwin-arm64"
      sha256 "ac80aab0d59f66bfff8bc9f886a5bc4b4aaa7f5356e4f3d61287457c8985c53a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-192648-4667ff7/nav-pilot-darwin-amd64"
      sha256 "841caffa53b5758a44df028cc5ef239eeff7576441f0e0cb16d65c2dd6fb70e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-192648-4667ff7/nav-pilot-linux-arm64"
      sha256 "2b3fe20b3c543613e30fdad9b014860cbe9d79cf61a79469a5dcb71cdb3e1b38"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-192648-4667ff7/nav-pilot-linux-amd64"
      sha256 "432d3e4b4600da5ecdc7ee658970b0da4d67b60b5137a2b9fa50f881cd1dec20"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
