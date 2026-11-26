class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.26-212607-aa4bfa8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-212607-aa4bfa8/nav-pilot-darwin-arm64"
      sha256 "9b9bc19f1633b9adc16f7690045a9aee705e04922a0316b3417df3691c5d835b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-212607-aa4bfa8/nav-pilot-darwin-amd64"
      sha256 "1610ac6814554129090ee30a57d9554da15ce3152b2c472fccb44031dfce75b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-212607-aa4bfa8/nav-pilot-linux-arm64"
      sha256 "8aa8670dadc01c8ff0d6f3183750e099bf2020fafbfb4331fe7844f1f9b988ab"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.26-212607-aa4bfa8/nav-pilot-linux-amd64"
      sha256 "c483b90b7cc56d9d216a7eaf343bcb5ad00d037e6d21b92638a3901a507cb8ac"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
