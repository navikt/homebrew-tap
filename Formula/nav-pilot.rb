class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.21-074240-3f5dac0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.21-074240-3f5dac0/nav-pilot-darwin-arm64"
      sha256 "0d59215161e5986a45611fe857b01427cb2fd951c7238e8182f0e685d4fc19f4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.21-074240-3f5dac0/nav-pilot-darwin-amd64"
      sha256 "f174edb3d322b243989737ca2ab8203aabd9fd09e42f0baef3f5e21e7701ddbf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.21-074240-3f5dac0/nav-pilot-linux-arm64"
      sha256 "ea218b3b9c5a1440690d4be56d00d652affe219a9dedb49ff01eb66aba73a669"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.21-074240-3f5dac0/nav-pilot-linux-amd64"
      sha256 "aa7fc33a5cfdffac60a4e606087e938fb200ce19ffa5fee0e4bfb2f2e013068c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
