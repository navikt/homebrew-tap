class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.25-142645-c42c7f9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-142645-c42c7f9/nav-pilot-darwin-arm64"
      sha256 "97caf36d4fbba7f778a04bdb3043803fc1f1892855e4a240d0c71ddf6f43330f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-142645-c42c7f9/nav-pilot-darwin-amd64"
      sha256 "c80dbd09f1ab3e885791f3d034c5244af5842e5cd56dbaa5fee67648ce91de3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-142645-c42c7f9/nav-pilot-linux-arm64"
      sha256 "a94f1bf6bd1d0ba383a7465d5d70fb241cabf7a62482a46cad9ae15b123b1175"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.25-142645-c42c7f9/nav-pilot-linux-amd64"
      sha256 "c8aff8fa10eeb7a5daee7c719fcd454a4357e08770fc8ac883c1717a33ea98a7"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
