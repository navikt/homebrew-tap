class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.28-190031-33a2525"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.28-190031-33a2525/nav-pilot-darwin-arm64"
      sha256 "c263d87ec5158d8a38fe69d341c44228f1f459f3f08d7294df23052f713be885"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.28-190031-33a2525/nav-pilot-darwin-amd64"
      sha256 "a951c77718c2206934eca944fab279dc0252b4a4741a6ed9290943a49437fcf2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.28-190031-33a2525/nav-pilot-linux-arm64"
      sha256 "9d28bd7c2a730112339bc4c8ed06afe2053d030c4367102e661bf5dca4dc76a9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.28-190031-33a2525/nav-pilot-linux-amd64"
      sha256 "ded7c18094fed47ac18b12d03cfe7fa69dd78e9aba00bd52e39d14696360835a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
