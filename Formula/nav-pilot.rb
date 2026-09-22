class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.22-062309-8b9eaee"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.22-062309-8b9eaee/nav-pilot-darwin-arm64"
      sha256 "11624ec92f1f8ac6705526b7c8d5bad67c08beafd2e0e5ef5d727ce129474b4f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.22-062309-8b9eaee/nav-pilot-darwin-amd64"
      sha256 "c9c2286376807b41d25eb72c2d1bea6cffc2c05013205b6b0c39e99349bc56b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.22-062309-8b9eaee/nav-pilot-linux-arm64"
      sha256 "f821497ac12b3dadbf61d7348d3dd6129db949e520dac93e954d67044d65835d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.22-062309-8b9eaee/nav-pilot-linux-amd64"
      sha256 "61364801d4dc086adc39ee4d88ec2b7a282a58f2cb9ed1ef17881c43d87ad861"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
