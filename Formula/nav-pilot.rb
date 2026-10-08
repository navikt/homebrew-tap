class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-173119-4e88cba"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-173119-4e88cba/nav-pilot-darwin-arm64"
      sha256 "08581c3cc332f1fa3eb0d715a4ad10f9c02d3ab24eab89b79dfdcbe7625f3e13"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-173119-4e88cba/nav-pilot-darwin-amd64"
      sha256 "8a32eaa9ce8b2512755d94cd14bf7863890cc1ac7c281143eb0713edf31d41fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-173119-4e88cba/nav-pilot-linux-arm64"
      sha256 "5be10a26db744999c1986bcd70ecab97f3035e5bbd5ed76237373b5ab16599af"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-173119-4e88cba/nav-pilot-linux-amd64"
      sha256 "b00d9dc57f6eab80a41ac121ebd56995d6adfa9bd2d386edda31c5b7b28db3fb"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
