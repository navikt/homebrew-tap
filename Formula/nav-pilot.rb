class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.22-155120-c75213c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-155120-c75213c/nav-pilot-darwin-arm64"
      sha256 "7665b6e17bcff0a2e66e9fcb0e21140f57f40b71e6492c0bf92d8fa22709ec3c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-155120-c75213c/nav-pilot-darwin-amd64"
      sha256 "4570e5a021df4142aab20ed7592d41803344fd8610c6853fa1ab8d4cae7157ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-155120-c75213c/nav-pilot-linux-arm64"
      sha256 "128899d70503796d3924f918ff1e0efd3d5e87c342a61620bbd75b084015d1a7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.22-155120-c75213c/nav-pilot-linux-amd64"
      sha256 "77aa0c7a6deb7d53bd2bd9cb3698794025d7e9c9d4038e922d19337bcbe64485"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
