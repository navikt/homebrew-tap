class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-121638-156591f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-121638-156591f/nav-pilot-darwin-arm64"
      sha256 "ca9283ea5851d52692d7967789bf297bf5727758e3107c8baadc6631df0fdfba"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-121638-156591f/nav-pilot-darwin-amd64"
      sha256 "d0bf0ea7a043b92ad271a6d50fb0a806012bf4723b3c8b200b156cfc8f8bd253"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-121638-156591f/nav-pilot-linux-arm64"
      sha256 "59959c59c9bd871f7391c9ffb80b05cdece069ee87cfb1a170ff005e3d560477"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-121638-156591f/nav-pilot-linux-amd64"
      sha256 "edcc6ff18b732c4c365a08258fc1ab7f4fc9c3568f8c2a88cd1dbf2b618f7927"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
