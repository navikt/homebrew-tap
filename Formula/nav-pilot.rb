class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.27-152604-12f7d1f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-152604-12f7d1f/nav-pilot-darwin-arm64"
      sha256 "9f00a500b2ce37618b44a73976cd68d9644c531e0b453a030173bff5080e470b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-152604-12f7d1f/nav-pilot-darwin-amd64"
      sha256 "9ad975ad334e0dfba35d613de5ec92f8142dd992aac00317122325e218a27473"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-152604-12f7d1f/nav-pilot-linux-arm64"
      sha256 "14a2e733c0d9f7ea651964c115aea432725d09693d48f9d2a8e39baca06ad264"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.27-152604-12f7d1f/nav-pilot-linux-amd64"
      sha256 "b1e0d33b02253144b487c19975e75abd5072065caabf862154e954cbd7bc3a8e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
