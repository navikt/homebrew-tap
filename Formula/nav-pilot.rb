class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-192655-1379351"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-192655-1379351/nav-pilot-darwin-arm64"
      sha256 "89d7cd454c43c02287cbe05f3092d6749e91997a4b1978c1b83fc2d125fc6019"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-192655-1379351/nav-pilot-darwin-amd64"
      sha256 "12146c3219d71a7416f5370bbdedd89944cea336b025ac02fa4085ba90b48366"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-192655-1379351/nav-pilot-linux-arm64"
      sha256 "db1ba106df0ef936d87c3aa72bfc92ae7ab0afd258fd58060c1a9bae0fb49f19"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-192655-1379351/nav-pilot-linux-amd64"
      sha256 "da3a7034aeab66c6b0582e8c308c419b6fd983ed1e375711159b1d2b0db9bd67"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
