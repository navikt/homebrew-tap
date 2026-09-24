class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.24-124554-f1507ca"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-124554-f1507ca/nav-pilot-darwin-arm64"
      sha256 "1dfcf13f88baa8f500f4885a5a09d419634b524dfbf44bdb370f168a95b6c7ad"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-124554-f1507ca/nav-pilot-darwin-amd64"
      sha256 "ffa796c8416e1524e7956222c9b6298a2a39bae06af698fa91d3810dd91cf2d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-124554-f1507ca/nav-pilot-linux-arm64"
      sha256 "c97d2f8f18e1ad9a25c795b9709635f67b856bc141d01ef88f9f8a52cd5f5ee5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-124554-f1507ca/nav-pilot-linux-amd64"
      sha256 "417077ef3ba7300cf1b527ddeecabb9e8bc38e00ed73e95467e1ac65d301cea9"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
