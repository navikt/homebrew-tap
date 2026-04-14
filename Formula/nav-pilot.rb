class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.14-093800-fac75ff"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-093800-fac75ff/nav-pilot-darwin-arm64"
      sha256 "33b1e474af9039c86e12cb72207f9cbf41b490147ac19e37ed4be42abcd7ec4e"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-093800-fac75ff/nav-pilot-darwin-amd64"
      sha256 "336f5b24e7db1ec9f4cb0742600e78316d73e92ec3c7deefeca8996efdac4fea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-093800-fac75ff/nav-pilot-linux-arm64"
      sha256 "cd926646caf72a327da38214a61b28c1d584a2fcc2aeaa254b9613c05f5ec45d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.14-093800-fac75ff/nav-pilot-linux-amd64"
      sha256 "b16f632763d96505ae77ef484dee02c80784cdc72885d5fa05836715fcc56440"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
