class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.23-080155-c049483"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.23-080155-c049483/nav-pilot-darwin-arm64"
      sha256 "cf2cc50926f8547d71a86392574c84b23d1d1c5691b59a3de31db80bec83b2d7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.23-080155-c049483/nav-pilot-darwin-amd64"
      sha256 "787b217b64e4587cf30827dc309f772a1de9c73f027a608bb27565e32898ff62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.23-080155-c049483/nav-pilot-linux-arm64"
      sha256 "7b8583e4e16d5c55ffb878576ac3d466c57a0110a89ad06f8a9ba885318774db"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.23-080155-c049483/nav-pilot-linux-amd64"
      sha256 "192cbace4262eaa2b2e9abd3b54dad99c52ed943ed1bc41e5932c646e8015fce"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
