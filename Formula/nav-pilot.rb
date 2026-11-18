class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.18-093153-8d513cd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-093153-8d513cd/nav-pilot-darwin-arm64"
      sha256 "e024388debe96d9b5830da5218963b9a484e8d07e10c16e724419bfae1e40445"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-093153-8d513cd/nav-pilot-darwin-amd64"
      sha256 "5f0049ba81ae416c2b920e712c21abc00a720c6de27bab45b3e63fedbbea02ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-093153-8d513cd/nav-pilot-linux-arm64"
      sha256 "e62fbaf334286dab76421ac5a5fd6e0208d79186cb18197c29e48859410877fb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.18-093153-8d513cd/nav-pilot-linux-amd64"
      sha256 "a4df3314dc460bd1300d6c4dd253ee7598404ddb76f7b2a23e3e5185f5cdee33"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
