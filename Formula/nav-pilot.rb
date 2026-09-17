class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.17-101405-3e2b4b6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.17-101405-3e2b4b6/nav-pilot-darwin-arm64"
      sha256 "d463a1f79bbf501c936081b141ce1a21d35dc725de1bbcbc01f76773832755c3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.17-101405-3e2b4b6/nav-pilot-darwin-amd64"
      sha256 "4ce22606da8cc30b4419f87c16b4243ab8419b8710d629e2160518a04647e74c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.17-101405-3e2b4b6/nav-pilot-linux-arm64"
      sha256 "1a675a3e3b6431c1bc5b17624a1c075f0d2f5572b919d949e6e1aeaf06cead8a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.17-101405-3e2b4b6/nav-pilot-linux-amd64"
      sha256 "06a6c61b65c8768fc3302bc871eab3f82f1928533bad5ba7d5f70a6c9816b5ee"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
