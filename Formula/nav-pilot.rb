class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.12-112121-748e8f9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-112121-748e8f9/nav-pilot-darwin-arm64"
      sha256 "87cbe94eb0ca4d662e54d2e0a25d5e96fe6e299e717148448454bb50047d4396"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-112121-748e8f9/nav-pilot-darwin-amd64"
      sha256 "e4955fc0e8622b18d3d17e2ed2a1366b1f4abc7916d6622f2fd491a53fd8afa6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-112121-748e8f9/nav-pilot-linux-arm64"
      sha256 "ea74803aa1965b809fbd55939bdeea27ec2f7c89e5fc6f579a127c486395eaf6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-112121-748e8f9/nav-pilot-linux-amd64"
      sha256 "f553a5180f72b25f223710fdac125bece710ef6f4d5de37b725a280b22e03ef1"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
