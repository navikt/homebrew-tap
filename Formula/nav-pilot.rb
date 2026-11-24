class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.24-030001-ac95fc2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-030001-ac95fc2/nav-pilot-darwin-arm64"
      sha256 "adc2b6a327bb5100521f4f6fbf599e1e3b97d9858d16d221d7070877f7d87382"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-030001-ac95fc2/nav-pilot-darwin-amd64"
      sha256 "80b218ad5b213d6d727695543ad1f8aea02734ee1279e52d03be6900851f8698"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-030001-ac95fc2/nav-pilot-linux-arm64"
      sha256 "b41b21baa27019dd62f24811545686f3420f0b760e718c248b9437939fb69328"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-030001-ac95fc2/nav-pilot-linux-amd64"
      sha256 "4c2d8ecdd66e30c9f4e754752faa93a4f934e2f41ade0555be578485374bc7c5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
