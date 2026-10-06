class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.06-140548-f35e5d4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-140548-f35e5d4/nav-pilot-darwin-arm64"
      sha256 "890d516f1d081dd6132cd1b86a51422f7455f0f59852e311f6ca0cf0f6432dd7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-140548-f35e5d4/nav-pilot-darwin-amd64"
      sha256 "5fee891af74885527802c5d5c56a5c02f392ab2bfc26a5f9b5dc743918e2d030"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-140548-f35e5d4/nav-pilot-linux-arm64"
      sha256 "1c50154d472ccd42c190c44f21741f0b63382ba3906b824fcecd78ea12e17de0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.06-140548-f35e5d4/nav-pilot-linux-amd64"
      sha256 "f36e3b61607b3c2c824f4ef0be1279a3efc529fc04cae05d3520e6ae071108f4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
