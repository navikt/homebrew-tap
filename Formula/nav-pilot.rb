class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.24-190404-d24a65e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-190404-d24a65e/nav-pilot-darwin-arm64"
      sha256 "cf74a020c2324affd05f098eb6ea071f9a5a4af3e34f1f2f2b8b46f188a7bd24"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-190404-d24a65e/nav-pilot-darwin-amd64"
      sha256 "54a0a4e0b695558513c922902fa2e61051150d0522e8bc99bfd4d9bbf29721b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-190404-d24a65e/nav-pilot-linux-arm64"
      sha256 "4a067bbe423ffab3be426677ea20651e08b0211738c548c794f23f78ff56f504"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-190404-d24a65e/nav-pilot-linux-amd64"
      sha256 "0ecf3c3beb8797bc9cb6c2616aed2c179c1d34d5bfa060abe39b5b2c111e5cdf"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
