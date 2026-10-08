class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-225212-8936779"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-225212-8936779/nav-pilot-darwin-arm64"
      sha256 "c38bc1b009ca26ee387f79b30ddb787fa2c58b3787d79595555cb9b6f29d4e23"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-225212-8936779/nav-pilot-darwin-amd64"
      sha256 "18ba84a6810fe88d4e41f00efaf1227d6d806e8ee15d1d16c5728f7d0395aab4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-225212-8936779/nav-pilot-linux-arm64"
      sha256 "9e0488462de7401be7e76230ca4194664d6f92d103c429284bd6b3d105d82d51"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-225212-8936779/nav-pilot-linux-amd64"
      sha256 "ddc132b0eebea42407c759d4c97c7286b711cbc1b0fabd11e577473f3614d3e0"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
