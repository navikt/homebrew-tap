class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.27-201649-b3cecb8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.27-201649-b3cecb8/nav-pilot-darwin-arm64"
      sha256 "e08eb2cf3e11b84223693fa0356ec1fbecd6e41bf76ea2bf9c3f293fba4b6c4e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.27-201649-b3cecb8/nav-pilot-darwin-amd64"
      sha256 "ed6d2a174d730808d47e5d349061a116129d9fbdeeb8c5152eabeb73e28eee8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.27-201649-b3cecb8/nav-pilot-linux-arm64"
      sha256 "28b5eb0708d82781a497860720b069f73be9d941f8811d7dbb5791d9fbe2edb5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.27-201649-b3cecb8/nav-pilot-linux-amd64"
      sha256 "ff028283d9361ed051a8b62f6e6a75fc80cf383aad28aea42a43aa2a927ef3d2"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
