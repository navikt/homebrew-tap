class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.23-174316-bab98d0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-174316-bab98d0/nav-pilot-darwin-arm64"
      sha256 "edee360be2995ad5d68fce53593dcc24ea2eb8b9088d7837028734cf6fad58b7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-174316-bab98d0/nav-pilot-darwin-amd64"
      sha256 "5c1db380418555b6ffd02f3bff2460caade6e873d41bdfb6205ef4210e1e40a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-174316-bab98d0/nav-pilot-linux-arm64"
      sha256 "078c9bdc5d83510e68d0da6da8c751541f1fa505865651ea29e16a626f1a1cb6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.23-174316-bab98d0/nav-pilot-linux-amd64"
      sha256 "af58c98e6a719a759e3a0413430ed03f624aa82b2390fc3a563ef6003725d297"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
