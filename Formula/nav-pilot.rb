class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.27-150410-d24cac4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-150410-d24cac4/nav-pilot-darwin-arm64"
      sha256 "4fe19dcf8daad621ced777d0a2e55e9a84d7387457aaeff8559eeade75758980"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-150410-d24cac4/nav-pilot-darwin-amd64"
      sha256 "e5951b970eab074fec6ff143db478aec84ace6bed95a007e4ec87cbca1a07ae4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-150410-d24cac4/nav-pilot-linux-arm64"
      sha256 "785c884e62563c5406392120f7ae639c536c8b58774e6cdb29e52ccf769a418d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-150410-d24cac4/nav-pilot-linux-amd64"
      sha256 "fc4667d1ad75d026612db13066e1c49c31fda59a8851a58e03456ca69a107280"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
