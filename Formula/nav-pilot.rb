class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.24-201020-febd21d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-201020-febd21d/nav-pilot-darwin-arm64"
      sha256 "fcb30118d82f72f175083d39822e53e305abfd50ad786d346f07437d85dbe91b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-201020-febd21d/nav-pilot-darwin-amd64"
      sha256 "2bbe197f0f0f343dee75c2afcd49834a577700648c0ece8d9b305b1c92c29002"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-201020-febd21d/nav-pilot-linux-arm64"
      sha256 "4631463da2d8351a28e9e4b63aad48f2ecc003ae6d73a0a7a3eb90a7f6098449"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.24-201020-febd21d/nav-pilot-linux-amd64"
      sha256 "55d82039bc3e8501a10d101c569cb02900d9f68c043858154c4c97e60027eb09"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
