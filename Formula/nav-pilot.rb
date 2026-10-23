class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-194008-1b44cea"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-194008-1b44cea/nav-pilot-darwin-arm64"
      sha256 "1bfe4fd20412e14bce4e428f10a1180b48a06b71668786caaaec6fa91979b03f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-194008-1b44cea/nav-pilot-darwin-amd64"
      sha256 "1e3cccf9e4fdd054bb24f2f1386d6702bb789f6e5ad3db573819b5a868889966"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-194008-1b44cea/nav-pilot-linux-arm64"
      sha256 "326a381a38a44ee8c0338ddb77053bca181dd1caf73f046626a79408eb2b62fd"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-194008-1b44cea/nav-pilot-linux-amd64"
      sha256 "85b0497bef449c41251bfdd0248aedd4755a14d3ca2ef0cb06e39ce5c5792a68"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
