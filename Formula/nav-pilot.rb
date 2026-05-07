class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.07-083824-2a026d8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-083824-2a026d8/nav-pilot-darwin-arm64"
      sha256 "da056077fed6df090f1e10be2e4842dd63082ac06ffdecff5d625fbab0b70b31"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-083824-2a026d8/nav-pilot-darwin-amd64"
      sha256 "99e706dbb0b39dc870118eec18db21519b8ff65532742dbfb03ca034835fca4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-083824-2a026d8/nav-pilot-linux-arm64"
      sha256 "9791a73d236f5e75eb8f1f3c0224b8e4bf967bf5fe4ff909557c891ff7a87195"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-083824-2a026d8/nav-pilot-linux-amd64"
      sha256 "c93cdf16f722392f39dfb28a86ffd2d91319b82cc39aafbe443b0187a14766d8"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
