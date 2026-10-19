class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.19-203144-8a64160"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.19-203144-8a64160/nav-pilot-darwin-arm64"
      sha256 "bb634601f43799b8ac5e4cea7be901a7af9abea48f996f925466701f5ba0d4db"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.19-203144-8a64160/nav-pilot-darwin-amd64"
      sha256 "56589bffce40703056b61fd144830776df204929fc9e93ede5588ba898de1c81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.19-203144-8a64160/nav-pilot-linux-arm64"
      sha256 "29ae2668a7af73d7dd1694971572ad2a34fff74fe27de830333257ec1bde48ec"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.19-203144-8a64160/nav-pilot-linux-amd64"
      sha256 "57874df9468080da31ce9849243e66e1617255d3cbe892fe8e990a943efaa62c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
