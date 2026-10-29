class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.29-065631-a3ed31e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-065631-a3ed31e/nav-pilot-darwin-arm64"
      sha256 "8ca81526ece55c670bda99ee649095601c7da1f4569c93c1cf1a865bc0ebcfbf"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-065631-a3ed31e/nav-pilot-darwin-amd64"
      sha256 "2f19e104168f2f05f4c2c1628fc629bd29151434f448d58104b40f5a13abf030"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-065631-a3ed31e/nav-pilot-linux-arm64"
      sha256 "dc4d5f118fd9a50f5c779e60d6e41cc3a8c7e502ab3e7322880ef6fac77e303f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.29-065631-a3ed31e/nav-pilot-linux-amd64"
      sha256 "928763c5f53e3b6e7e096aaf6668228d5ad10803d7c711626b2813fe743a59fc"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
