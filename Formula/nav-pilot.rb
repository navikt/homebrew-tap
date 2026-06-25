class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.25-072030-1ae3959"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-072030-1ae3959/nav-pilot-darwin-arm64"
      sha256 "2ffc5b0792bf56caee5f1af993e30d66c02cc2c7d334dcca5c0a3d3cd215c5db"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-072030-1ae3959/nav-pilot-darwin-amd64"
      sha256 "b4495f5718d27afef45ad0d6bd11dd8a77344c682218a3772949174b14c69df4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-072030-1ae3959/nav-pilot-linux-arm64"
      sha256 "9ecda4591f0198e19e0c29532b606bc458125464a516db9fc005bafbdeb8dfe8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-072030-1ae3959/nav-pilot-linux-amd64"
      sha256 "d5db5ed71d16469ece489b5cc16697c74383f8e4ebd3de48f991052a14f1ae12"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
