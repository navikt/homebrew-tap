class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-053407-09ed1ee"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-053407-09ed1ee/nav-pilot-darwin-arm64"
      sha256 "6fb099af99a58b27bc01deba43f2d0edf27a85f84c5c0edac50a78b2092375b0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-053407-09ed1ee/nav-pilot-darwin-amd64"
      sha256 "f5d6c681e566158e561feb92ec0d9898c977300872166dbf4ab003cc2113a549"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-053407-09ed1ee/nav-pilot-linux-arm64"
      sha256 "e5a6afbaddac08382ddaf673466d8d7578c789332f744a11fe4143ba6efedb84"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-053407-09ed1ee/nav-pilot-linux-amd64"
      sha256 "6302314c20066be8a008981fc8f7ed600972c9d09804f2911f7e6df0034b0a73"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
