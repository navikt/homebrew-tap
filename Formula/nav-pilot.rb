class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.25-115013-f0f74d4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-115013-f0f74d4/nav-pilot-darwin-arm64"
      sha256 "3d9cfb5654c542d6472d26fc8118c96061503556bd8c410b4607331ab9d83923"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-115013-f0f74d4/nav-pilot-darwin-amd64"
      sha256 "09f28540accb0b9ea9ae2ae6a520066f072d6e124fb5f1e94b21f3c0b6f72086"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-115013-f0f74d4/nav-pilot-linux-arm64"
      sha256 "225294a3c3f743e159c48c047e4e4a5b08cbe3a9f7bb90880431d6d671190b97"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.25-115013-f0f74d4/nav-pilot-linux-amd64"
      sha256 "852a7bbbed16dde3a2c96840818c081d6b741c5a635e1b72a92721cef4ba1a49"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
