class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.27-085544-c050179"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.27-085544-c050179/nav-pilot-darwin-arm64"
      sha256 "ba9c957476396f5150a6ff44839ec234b769b523ff68c5b4c8e4a9b838bdf734"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.27-085544-c050179/nav-pilot-darwin-amd64"
      sha256 "6e38b966fe53b30543c0cdff31a65c737c8e9b8fda5f1cd1f4974eaa46293407"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.27-085544-c050179/nav-pilot-linux-arm64"
      sha256 "1923d5b00aa99b2f6fa74502b228191bd0f5484e9868d7e68a8b6f419b634be3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.27-085544-c050179/nav-pilot-linux-amd64"
      sha256 "1cc07e682a9d3857dd4d40504c825cd192383a12db384d3ae297a44a68d564c8"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
