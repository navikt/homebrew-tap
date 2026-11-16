class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.16-170909-fa3f60f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-170909-fa3f60f/nav-pilot-darwin-arm64"
      sha256 "4b4c11676282a0f8a697f705fc7cdf693353c8ac1b2b19890f23bef3c567e69b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-170909-fa3f60f/nav-pilot-darwin-amd64"
      sha256 "ac7ee8946e3b8c32ffd64908b9c2460fd355cda4d1027deb08b316382e0e8354"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-170909-fa3f60f/nav-pilot-linux-arm64"
      sha256 "20f9d75f9b77b7d0546959a1bb8ee1aaea21c2e757ed4eb9af0b90114669fd5e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-170909-fa3f60f/nav-pilot-linux-amd64"
      sha256 "8712c7d1d84c279119259ae17c3738b445ac94f6fca8dcc293a4307e54a22f91"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
