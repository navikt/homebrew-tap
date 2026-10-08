class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-053411-15be320"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-053411-15be320/nav-pilot-darwin-arm64"
      sha256 "acba6da1c4e41353138ff3af7ad8d3fb12aa28204d8a5ca5f3f7b0de352e1928"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-053411-15be320/nav-pilot-darwin-amd64"
      sha256 "f9ba4f64a2c090dd5ffb61b599a5bd40b20f6ac7e90f7d361218afe8dd6a5ee1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-053411-15be320/nav-pilot-linux-arm64"
      sha256 "4b3e1d459562e58306fa2d63b3efb7305fb4ae0b1a42c1bcef204d4fc21d73ac"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-053411-15be320/nav-pilot-linux-amd64"
      sha256 "e00fafd6038eb0b6e29ee8e8d383a977f2ad7ac82dfbb9b5df2db0f4bd2175ed"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
