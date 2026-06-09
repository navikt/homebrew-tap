class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.09-104357-bc8c934"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-104357-bc8c934/nav-pilot-darwin-arm64"
      sha256 "ff562a435a9ba2766fb1b2e929d6aceab139004177657a3f196301afa66602f6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-104357-bc8c934/nav-pilot-darwin-amd64"
      sha256 "6bfff03de73e44a1b3fc236294d90beae7cee028e460d26857592c6192ccc339"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-104357-bc8c934/nav-pilot-linux-arm64"
      sha256 "828f5e55fb528158bc857a03cc51ce1e7146bee5fc919dd4b2c27b1a0276d10f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.09-104357-bc8c934/nav-pilot-linux-amd64"
      sha256 "6bfb587ecfe460af944be5417a2c69a89c8fbd8c849e2f8a2810884ebabb0045"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
