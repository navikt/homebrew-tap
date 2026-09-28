class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-125032-6ea2b70"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-125032-6ea2b70/nav-pilot-darwin-arm64"
      sha256 "3c029e00cc19b419ea0aee8bfdfae337616736fa9b4382b70e91b7ee4b2c7c38"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-125032-6ea2b70/nav-pilot-darwin-amd64"
      sha256 "11ce7fd01314f428f7b1363486349aa32e824623c6c6253917072a3b1e72d7a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-125032-6ea2b70/nav-pilot-linux-arm64"
      sha256 "68d1e790e72e5ad0144563ad4820d38c296b6f8b535b81fba4c420093d736edf"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-125032-6ea2b70/nav-pilot-linux-amd64"
      sha256 "d9267c3d63bb00d94c1243a0bd93c82c2ac3d8f21f2af43f995ff6c2631fa24b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
