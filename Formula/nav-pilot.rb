class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.13-072842-7ba88df"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-072842-7ba88df/nav-pilot-darwin-arm64"
      sha256 "c18227011b5be04915e1fb9c97d18f54b53e921160af1d5d883cbc71de42b8ba"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-072842-7ba88df/nav-pilot-darwin-amd64"
      sha256 "945719d0deb101cc701b1fd5ffb53b5aeee41684cf62ded94147599c28fb4957"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-072842-7ba88df/nav-pilot-linux-arm64"
      sha256 "f5362c183b6348d2c6b0f2d4ddc5dfdb80b7c1d0eee2357b8f1d704d9defe94e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-072842-7ba88df/nav-pilot-linux-amd64"
      sha256 "e12f07b446b1a65283d8d60ff5023f59d510b3c1a05234063fd657de97b87162"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
