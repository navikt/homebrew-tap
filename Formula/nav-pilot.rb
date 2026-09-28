class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.28-123302-f4674be"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-123302-f4674be/nav-pilot-darwin-arm64"
      sha256 "ca26602baf7d386b0b5179d0a5b93fca907bd4bb7479775ebfb70ea313335a1a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-123302-f4674be/nav-pilot-darwin-amd64"
      sha256 "5a19fa3c06ea7d3d6c653006644442e254946dd19a06d09908666278e77d1727"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-123302-f4674be/nav-pilot-linux-arm64"
      sha256 "a5505171b3f09b5228f534b0e5201a029034a93d3bc20c085b9da95e6f56d53b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.28-123302-f4674be/nav-pilot-linux-amd64"
      sha256 "84514ab1f63e4450603503dbd2b9d6b1e332599c5c0cb247c1dc2d60a160bfe5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
