class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.27-131736-384416a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-131736-384416a/nav-pilot-darwin-arm64"
      sha256 "1a29bd22b0e2154e98e94d13c6267056f3087c9d66e19d093bbb479c03a2aa14"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-131736-384416a/nav-pilot-darwin-amd64"
      sha256 "7e0990d7ace87c0fda3ff077c04d34c0423fea2d310fc9eb6123fc38a8ccf95d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-131736-384416a/nav-pilot-linux-arm64"
      sha256 "926c467d4268a68ba387bd4c9c1558ec04b2ddc5ca398b1b4343f2f54d64e01a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.27-131736-384416a/nav-pilot-linux-amd64"
      sha256 "6ec35337c384f8f83115ed833fd103ac6b184f367cae5cffc99e620466bc2257"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
