class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.01-092734-42d500e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.01-092734-42d500e/nav-pilot-darwin-arm64"
      sha256 "6e7d29fc8b20e6ede14135808bc702fb8ed28c9b819f31fac058967348029b48"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.01-092734-42d500e/nav-pilot-darwin-amd64"
      sha256 "bed432638e4e283e6bb2db39ce40e51ca55f47053783adc516436f38297ae4dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.01-092734-42d500e/nav-pilot-linux-arm64"
      sha256 "9b9059fe495f460b5b47988bd52bfb40d26521693acd64e05db4f39c063c4766"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.01-092734-42d500e/nav-pilot-linux-amd64"
      sha256 "aab11c0a1adb28c9fedc47bccb10c77c06ac764955cbde66eb42adefeb450294"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
