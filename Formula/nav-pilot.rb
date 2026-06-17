class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.17-180055-992b76c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.17-180055-992b76c/nav-pilot-darwin-arm64"
      sha256 "7524287d6fa17bf9e2c5445fe67ef40f5a91c6d6987f4b16e3f6f5455d4e0029"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.17-180055-992b76c/nav-pilot-darwin-amd64"
      sha256 "744fd2e14b0300a621d2daa9b13565104667f1f66196f0a18f478bbffecaded6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.17-180055-992b76c/nav-pilot-linux-arm64"
      sha256 "f12e60391d9a93ef74223a72c57c49715351fedef9d73210b3501878d76cf0f9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.17-180055-992b76c/nav-pilot-linux-amd64"
      sha256 "a1589aad8093e03d3e5a354ad799a5379affc1483c9f09b5d6072a85ad2094ec"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
