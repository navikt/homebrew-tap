class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.13-045847-ab98b0f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-045847-ab98b0f/nav-pilot-darwin-arm64"
      sha256 "f239e5c463d380f33b5794f3a6869ea13788ad509f3b40f4200dcd83ea19af89"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-045847-ab98b0f/nav-pilot-darwin-amd64"
      sha256 "56da19c233e9c54e773b559f17b119896a3a146c31ba3e6809cc33726262b8ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-045847-ab98b0f/nav-pilot-linux-arm64"
      sha256 "b3c237184eb52ef8d91de8c961a9db47dc51649ea59f9a12f236a13166da4fb3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.13-045847-ab98b0f/nav-pilot-linux-amd64"
      sha256 "5692ee335cdda90e4e44473c82f965f56c2eea9222a967ddbcbf41c21113d751"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
