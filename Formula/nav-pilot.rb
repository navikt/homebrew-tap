class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-140543-7134123"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-140543-7134123/nav-pilot-darwin-arm64"
      sha256 "f900a70a3df2690aea0b9dc78870d26115aa9e82045b4a000568cd5a25faf4c8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-140543-7134123/nav-pilot-darwin-amd64"
      sha256 "d0ff5a6625964ae4df2f5a24cd0f5b4f368818a1673cdbfb5a3ea064ce804eea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-140543-7134123/nav-pilot-linux-arm64"
      sha256 "af454c8f3a1b0ddeddcf90a8eb8dfc852b55488b44b9fce7e2b43e06df863737"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-140543-7134123/nav-pilot-linux-amd64"
      sha256 "30b13a86362ca47ec4f83fcc33633090c32e83de7892ba1d6e4d9ec8ed7b894a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
