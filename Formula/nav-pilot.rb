class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.18-092411-4d094a1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-092411-4d094a1/nav-pilot-darwin-arm64"
      sha256 "b8c177b10760f2583852617ab3b57f28c0aada147ed60759079b2193a3a7a3d3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-092411-4d094a1/nav-pilot-darwin-amd64"
      sha256 "c8c5992a03ca4834fff61814ef7ea4fbb1205d3639b74377077abd30c9187fbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-092411-4d094a1/nav-pilot-linux-arm64"
      sha256 "8f2acc29363fb10e967826d30c7bb76ea641b23c534fde429650c46736181340"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-092411-4d094a1/nav-pilot-linux-amd64"
      sha256 "57ff0f316e1243f68e942987b983d3d6e66d9f0ab91857743741268b476a0f73"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
