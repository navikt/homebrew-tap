class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.30-090824-bb25c0e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.30-090824-bb25c0e/nav-pilot-darwin-arm64"
      sha256 "d6560d24a147a7daff8bf1b1119b7c7225fd1f04482bc0efc6e2ebd58063daf5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.30-090824-bb25c0e/nav-pilot-darwin-amd64"
      sha256 "f993553bc7157979cbc7e7f5d37b42dd9dc673e31863153258867e28b6af2019"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.30-090824-bb25c0e/nav-pilot-linux-arm64"
      sha256 "ec53b896676b341b89613e5ec66ddf4df7a6caa546aa3279f4401f3896397d07"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.30-090824-bb25c0e/nav-pilot-linux-amd64"
      sha256 "5778b88b88e451ffde3779a0564b2085de723f30c1736310868b95e0a3225bad"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
