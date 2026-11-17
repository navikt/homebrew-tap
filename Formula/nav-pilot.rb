class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.17-100342-ea00381"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-100342-ea00381/nav-pilot-darwin-arm64"
      sha256 "27b95b525bc105cdfbf080ab43cf7e497e6cd5d7ade56c2d3f19ef50cde86b73"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-100342-ea00381/nav-pilot-darwin-amd64"
      sha256 "07e5b50a2c1bacfea64f502687381353203b5724d0a2ac8f72721a8b28f49d1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-100342-ea00381/nav-pilot-linux-arm64"
      sha256 "26d6cda74a51b49b76391c976e67e585e46de0dd89307723dae5cd1d930cce32"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-100342-ea00381/nav-pilot-linux-amd64"
      sha256 "8062ab9c3cc523cfa350c1bd48fd0012c69692a78e36a917465bc488811477e3"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
