class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.14-133903-3d0dcd8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-133903-3d0dcd8/nav-pilot-darwin-arm64"
      sha256 "a912eb2b46daff5c37d89b98b9759d85e2af03acb8065157d6e62a43a9a026a2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-133903-3d0dcd8/nav-pilot-darwin-amd64"
      sha256 "92429d94c2d1290aced9c5c4c252bdf3cae5d03e460e21c63fa2293d180220d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-133903-3d0dcd8/nav-pilot-linux-arm64"
      sha256 "0b5c25425cb4057837c404cfb69ee0680e285dec2279c1c3254f8e7f1f27ed50"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-133903-3d0dcd8/nav-pilot-linux-amd64"
      sha256 "afedcad338edf82fb1e6f229fafb749edb601c4000c3fe7db79fcf0472b0bd30"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
