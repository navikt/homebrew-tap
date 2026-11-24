class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.24-054913-14637c8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-054913-14637c8/nav-pilot-darwin-arm64"
      sha256 "b1b6100ab7b43c8a1eb20344db5a46c66e56de12159793a63691f89dc1c34d3b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-054913-14637c8/nav-pilot-darwin-amd64"
      sha256 "6cef7353a511e348c66694cff543dd86f38256c8a32cb5a968183952ea6272aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-054913-14637c8/nav-pilot-linux-arm64"
      sha256 "13eb9c69af87e3b962f4ebde6904cc12df51d99ee79f433ee677aa693de3d5a5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.24-054913-14637c8/nav-pilot-linux-amd64"
      sha256 "857c4809b681cf6015fb3f3d839aef65d1cda18c0ec2063fe53c9ace1f06b640"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
