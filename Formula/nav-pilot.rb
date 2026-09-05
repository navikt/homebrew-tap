class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.05-085524-887323d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-085524-887323d/nav-pilot-darwin-arm64"
      sha256 "6ba9cfbba7d5a6b18220a4ec083722f63218b295204c6261384f0e81e538585a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-085524-887323d/nav-pilot-darwin-amd64"
      sha256 "b399f0ed3d56da490db9cf9a048eff42bae0e54ffbe01d9f426e6a639d10ecd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-085524-887323d/nav-pilot-linux-arm64"
      sha256 "9078d8c48a733920e7841591437e48bc13b087c2f9714fa7637effd8da280c8e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-085524-887323d/nav-pilot-linux-amd64"
      sha256 "e876127ead037096b2ec440bda9128429769a56d9fb94300defccb58f8c23b41"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
