class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-093212-9495fcf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-093212-9495fcf/nav-pilot-darwin-arm64"
      sha256 "5fa5df7f7e6af08bf6d3e06066f9e190bf612e453e853522393cb14cb4f70bce"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-093212-9495fcf/nav-pilot-darwin-amd64"
      sha256 "30ee231c0a5fa48dc2cd9db084277824cc0d48511cf87fb0d0aa6b8384c5adcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-093212-9495fcf/nav-pilot-linux-arm64"
      sha256 "d3c1f22c10e8e6c7213b46e0217a668204feb3bcf920e0101e30a589660f6184"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-093212-9495fcf/nav-pilot-linux-amd64"
      sha256 "10137fe1ca61eecaec74295649cdf77612e9fa4eb77720fc268c439a52e27a0e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
