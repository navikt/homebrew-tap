class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.08-072835-4be5f63"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-072835-4be5f63/nav-pilot-darwin-arm64"
      sha256 "274b887076d1c04279c2038a5a4e060eccd902522c13bc7e0cdf6858686533ec"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-072835-4be5f63/nav-pilot-darwin-amd64"
      sha256 "2c2ec9bbfb499e55a02765b57daaddc3ff372a1a4d9fd614aafd9606b6bd8d13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-072835-4be5f63/nav-pilot-linux-arm64"
      sha256 "d96aade4f2e9946f674c0b7b9ceff34ba57e910956349def0aa0e6186e6bfa07"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.08-072835-4be5f63/nav-pilot-linux-amd64"
      sha256 "1ab33057c03a9ca879f2cf67fe5ececf8a537c0124fb9dc13e8ae1fdebde850c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
