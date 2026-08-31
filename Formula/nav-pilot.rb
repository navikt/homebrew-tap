class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.31-060023-953b359"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-060023-953b359/nav-pilot-darwin-arm64"
      sha256 "796c3f55c0444f55ea0005ddc36b43587bc72c13e508899ccddceda4fe4ee78d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-060023-953b359/nav-pilot-darwin-amd64"
      sha256 "36380e8ad82b0652537592413d12d342cbed20c74d5c2b0820d1cb39811a976b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-060023-953b359/nav-pilot-linux-arm64"
      sha256 "29558ae8d599fa17831e7e859623e0e07f4bd28f67d3a0d1623e1bca2b6636de"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-060023-953b359/nav-pilot-linux-amd64"
      sha256 "c2966c0a82c116a2222e6d4c51c90669db2c3edcc8160be30a14d8348a93d9e1"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
