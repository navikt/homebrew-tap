class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-210555-b2bb3d1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-210555-b2bb3d1/nav-pilot-darwin-arm64"
      sha256 "ca4c434109bd381b3ea6496dde9f30e6f6ac2626fc3608d79c920d45a230488b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-210555-b2bb3d1/nav-pilot-darwin-amd64"
      sha256 "fb10d76bc4c1608696b19ec8783203aee193c2499226af0ef801f1179c7caf92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-210555-b2bb3d1/nav-pilot-linux-arm64"
      sha256 "3535b5720d27da1ab18d773366e9d2ca1393755b529cdfb0bb01a9e86a2abd81"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-210555-b2bb3d1/nav-pilot-linux-amd64"
      sha256 "183573146e5a8edc7d331b58a6275cb06c1ab4b23bca89266c652cb775bffd75"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
