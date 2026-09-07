class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-212923-7a8673b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-212923-7a8673b/nav-pilot-darwin-arm64"
      sha256 "e92f71e482417d93bd67a157a155bf71f62bb2eff44d5c411f3f6ea77e5fb882"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-212923-7a8673b/nav-pilot-darwin-amd64"
      sha256 "6ed9801411c59b7a8b38a72adb10f23e6deffe3400c3cb91ef7c7c82c5bd9134"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-212923-7a8673b/nav-pilot-linux-arm64"
      sha256 "9038d97a55f5429c19ee7933a0633b118a052c7cc40a50dc16fd87ad53e3a374"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-212923-7a8673b/nav-pilot-linux-amd64"
      sha256 "e0a08ba2483d608e98e8eeee712d49a17681ec83b0c172aa355b479bd76afcae"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
