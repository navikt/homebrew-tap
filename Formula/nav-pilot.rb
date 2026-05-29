class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.29-104411-b927f3a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.29-104411-b927f3a/nav-pilot-darwin-arm64"
      sha256 "3fdd38ec4c16f6809b14bfe98821c2d3577bcf8e3585b7f058321599f2a24fb2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.29-104411-b927f3a/nav-pilot-darwin-amd64"
      sha256 "e88b97141945aad5863422800272cf9725c71ee1ea98cb39561c931b81901a63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.29-104411-b927f3a/nav-pilot-linux-arm64"
      sha256 "1022d1d2139f4b3a7b2b801585d033c21624d4726cc6c90b62666183c7b55608"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.29-104411-b927f3a/nav-pilot-linux-amd64"
      sha256 "15db09d681ab134ce6c2508d5a983d5d66a265a79c46adc485999d37834a81bf"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
