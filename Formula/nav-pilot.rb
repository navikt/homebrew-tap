class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.19-084945-c414e07"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.19-084945-c414e07/nav-pilot-darwin-arm64"
      sha256 "501ec9b0b6b5416cbfe95b8717363da0680af3a81e16e7cddbe9b37083a2595d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.19-084945-c414e07/nav-pilot-darwin-amd64"
      sha256 "9ad07ac4fdeaf5af628867c55028e9a14d719c2fc7b19afbd27cad82001c5941"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.19-084945-c414e07/nav-pilot-linux-arm64"
      sha256 "94f509728359d94a0efed06606612c5a1ab6f09f3489813d2ff0b3b314b97b6c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.19-084945-c414e07/nav-pilot-linux-amd64"
      sha256 "f9839119e3b3872df5c37df811a4c455d49135f911860f82131c9918a1bf4c7c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
