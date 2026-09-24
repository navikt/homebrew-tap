class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.24-161654-8478cba"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-161654-8478cba/nav-pilot-darwin-arm64"
      sha256 "4e920e2f689391ae5dd9afebc8164861538a823f9ead35c1e7826d04d27d3634"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-161654-8478cba/nav-pilot-darwin-amd64"
      sha256 "3ed4209d126ef47a50384c8d43b64638226782a38c156bf9585f2cd90df2af14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-161654-8478cba/nav-pilot-linux-arm64"
      sha256 "862170d25419172e1a9e70a6a6d85d26fa4d06fcd8d5aa67a4694a119e58d9df"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-161654-8478cba/nav-pilot-linux-amd64"
      sha256 "1817911ed5e643e8ea1210d1264e07386e238ef343f0decc6a7f9d62853e02b5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
