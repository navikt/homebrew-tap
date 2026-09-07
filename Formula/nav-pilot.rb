class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.07-182612-9d9ae55"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-182612-9d9ae55/nav-pilot-darwin-arm64"
      sha256 "c4ba6a3fd428cd54a8003e0958aa84da4bcab39acbdd9562d0cbc0618424911d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-182612-9d9ae55/nav-pilot-darwin-amd64"
      sha256 "511d783ea900ae06289ba63702d9f7195e1454581da7691a710004139eee037d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-182612-9d9ae55/nav-pilot-linux-arm64"
      sha256 "169e0057a7a2e30605fb79252d0b84704ef34b1dd467bcdeea1e3d6739fd7f1c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.07-182612-9d9ae55/nav-pilot-linux-amd64"
      sha256 "a5bea4ed41d500bc438badbf3d42e6e5b63d459c0375e3912110b92e325131fa"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
