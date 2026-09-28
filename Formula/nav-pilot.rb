class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-205306-47eca8c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-205306-47eca8c/nav-pilot-darwin-arm64"
      sha256 "fecb6ac4d406204259fa26125a390976b9f695926f98fae167b0bcca6a08a04a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-205306-47eca8c/nav-pilot-darwin-amd64"
      sha256 "7d0e7ca2d2764494fb08107c38cec354b7cdb06ad4a3a3abd98b14b59d8b421b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-205306-47eca8c/nav-pilot-linux-arm64"
      sha256 "ffc52ce2347d18d6ce753b2ccb5879fd080403037e6411feb3bab85b37bed933"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-205306-47eca8c/nav-pilot-linux-amd64"
      sha256 "af1c6ebe1d19c9168e877c353c572d269c35d574df218ee88b8decb4d61007a3"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
