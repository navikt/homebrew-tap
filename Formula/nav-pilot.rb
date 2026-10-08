class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-212050-3c9c008"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-212050-3c9c008/nav-pilot-darwin-arm64"
      sha256 "c2b36a17b8f9219999a198c7b1ec45dd490c8ac5e696fa32ca2a0377a089e107"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-212050-3c9c008/nav-pilot-darwin-amd64"
      sha256 "bba218a24180128b4c9a6e367c1c2b2b5da6ad6efc3e0954a9bf0d7a37d8af0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-212050-3c9c008/nav-pilot-linux-arm64"
      sha256 "71339763a84124a52a7bfaf6868e7dfd6a8123443ca3b34d1e1e26dc05ff29a2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-212050-3c9c008/nav-pilot-linux-amd64"
      sha256 "d8785da993698583ab7dfc2fa25a37aa0f03b46ed633ee4c87fbe399430e7325"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
