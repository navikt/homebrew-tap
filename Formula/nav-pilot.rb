class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.13-94c7e45"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-94c7e45/nav-pilot-darwin-arm64"
      sha256 "50952a043c86d0fe3c41fa64c4bf06d4e303227fdbdb236d638cdbde1c254729"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-94c7e45/nav-pilot-darwin-amd64"
      sha256 "46cac802f7c4f5bdb153ba9a788bdab20f0d0b9d53776b40e08389303747a2cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-94c7e45/nav-pilot-linux-arm64"
      sha256 "0f59338e81103a37c08126be47c416b6ce8e54d58cc54c9ff3d06ad109b59600"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-94c7e45/nav-pilot-linux-amd64"
      sha256 "b02a65a079d25697fcc1cc989126486234ac141c8c8d82af749a2f2d5d05fcae"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
