class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.27-185552-87b8c4f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-185552-87b8c4f/nav-pilot-darwin-arm64"
      sha256 "ffcc5622b5bcd5b513a9e586ddf1f06bdc684174b569b645bb9fa56587d3d868"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-185552-87b8c4f/nav-pilot-darwin-amd64"
      sha256 "0f63f0c5cd151e747d70fa85df7e979618d43e2fe4e31b4d5cf95080b2a5df99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-185552-87b8c4f/nav-pilot-linux-arm64"
      sha256 "c7e765f3bb88dd33f7637ed7dd3ec6fecd2afcbd85fb96dc4768f931308373ba"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.27-185552-87b8c4f/nav-pilot-linux-amd64"
      sha256 "6fd9e6d0f5d64e39c969dcd0bba39fc1845d0561107af0cb7814c5e22ca8f3d5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
