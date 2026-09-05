class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.05-134649-7705522"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-134649-7705522/nav-pilot-darwin-arm64"
      sha256 "142a78c39e46d2f452ef3ccf9fdeeaead9e59ffa24fb56ab9d606aa037869563"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-134649-7705522/nav-pilot-darwin-amd64"
      sha256 "44ffa42c9ecb9e65e3bc23f6ff43e517980012a2c42abe498021f85097b14f52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-134649-7705522/nav-pilot-linux-arm64"
      sha256 "d61f0fd003c2b379bbbf8277d79ae9256ae38f115711605152ecf417a2716183"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.05-134649-7705522/nav-pilot-linux-amd64"
      sha256 "60c05ca822b3952738adc848d7a63a16a92ddd51b7f74bde17016dafa90f75a0"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
