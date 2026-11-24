class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.24-103636-0c7f8e4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-103636-0c7f8e4/nav-pilot-darwin-arm64"
      sha256 "52aec9defea61d3907f8427b221ee35022b58b762008a6e61928bb0118b66cff"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-103636-0c7f8e4/nav-pilot-darwin-amd64"
      sha256 "09f6316ff55c207d5ec73338e4b517cdf3edb61fb696f5ebc9d815c9785a3128"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-103636-0c7f8e4/nav-pilot-linux-arm64"
      sha256 "75b704f46dd1b73fe3fe8be847fe4730c958546ce2c7cf6d210865e090190187"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-103636-0c7f8e4/nav-pilot-linux-amd64"
      sha256 "a0f6cd794e65132a0fb87f26c1010c08d6141d0987a25fe3c79983fcc3f8e609"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
