class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.24-180736-ffeaf4d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-180736-ffeaf4d/nav-pilot-darwin-arm64"
      sha256 "0b0d6c6e82dd55743fc069ba4ef28ffe3476320e0e79200bdd3f33991352b001"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-180736-ffeaf4d/nav-pilot-darwin-amd64"
      sha256 "2c9c6beab81d875314b1d9f43a5eb58eb7f1458a053a363911f3ee394cfa8b12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-180736-ffeaf4d/nav-pilot-linux-arm64"
      sha256 "8c055751d114bdcef616d9dce506063ed7076771e4f07aaa61ce47ae74cb3f02"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-180736-ffeaf4d/nav-pilot-linux-amd64"
      sha256 "8a6c7e2fefca264428cacd9a3ac448a7a7ed9e5e7e7e2d5438b8da7cce0f5810"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
