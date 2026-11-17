class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.17-201308-e3f26b0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-201308-e3f26b0/nav-pilot-darwin-arm64"
      sha256 "46e5fd8ed471410b6069ac2f995f64e0b2cdd807c69a2b84748346f0f14620e2"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-201308-e3f26b0/nav-pilot-darwin-amd64"
      sha256 "002b18ed2b4fb252629d3c2db46d743b10d83106d9e510b582aa4d73ed87f57d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-201308-e3f26b0/nav-pilot-linux-arm64"
      sha256 "8f0187d33b4c7dae556839e82b50ef4c1cf265434a589d78cfa7aed5ab686b0d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-201308-e3f26b0/nav-pilot-linux-amd64"
      sha256 "bb5509a47e6f5eb1ed797e0bb309a02a53190a208bc79d8fd905da7c39940661"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
