class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.20-082526-58663ac"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-082526-58663ac/nav-pilot-darwin-arm64"
      sha256 "1725c01089ea8ffc362d13c585e29ce94e14fffe160b718f2c4d0595f95ca2dd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-082526-58663ac/nav-pilot-darwin-amd64"
      sha256 "07c014d8552e2cbcf14868f014d4aacda9d0f26bd0c0ff1609dca96f31a1a38c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-082526-58663ac/nav-pilot-linux-arm64"
      sha256 "1a355e8822085d6fa368b8459e246a92ce95ed748ddd18456463802540bbbf78"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.20-082526-58663ac/nav-pilot-linux-amd64"
      sha256 "48c2994a3dd35ca3139d56e4a0e38a531bde9f2ac768b8516f2ce6f2d003f230"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
