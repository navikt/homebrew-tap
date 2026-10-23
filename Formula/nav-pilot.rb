class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-211757-c7de636"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-211757-c7de636/nav-pilot-darwin-arm64"
      sha256 "f615f9e7ceb13828d1438556415a3f763a768e1764ca27f81ff6b746079b5079"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-211757-c7de636/nav-pilot-darwin-amd64"
      sha256 "32d71b30ff4c921044bda70ed3d7dea78f68c467fdd75b0843e1dded46d45ac9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-211757-c7de636/nav-pilot-linux-arm64"
      sha256 "ecf62d2a9d5bcd1c4ab7714bc3630431bbd902bad63246a8427e9b1dfb931f6b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-211757-c7de636/nav-pilot-linux-amd64"
      sha256 "44c03d29217d5a0db2487f641748aed3dbe08cdfb13a7462aff505c8c716351a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
