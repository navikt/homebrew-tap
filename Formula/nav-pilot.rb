class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.08.31-001534-b493564"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-001534-b493564/nav-pilot-darwin-arm64"
      sha256 "2508f60bfdb5d1d4889b1d5116beae93d978a10fe1002df74e3f418a0976bc5c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-001534-b493564/nav-pilot-darwin-amd64"
      sha256 "7178ea27a301fc8312d6b786adb715f1ea17b7dc6fce8d19d3ea6b6c46a9992a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-001534-b493564/nav-pilot-linux-arm64"
      sha256 "4d04c96b668b866b0a13cb25a2f279f1004f8963857081189b09a538005a0fea"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.08.31-001534-b493564/nav-pilot-linux-amd64"
      sha256 "8cecfa40f14cf346194ad81b648f293b94f5234f8fa9e0d3cdedffd7970ff1c8"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
