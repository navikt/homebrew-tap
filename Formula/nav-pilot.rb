class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-122224-e556868"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-122224-e556868/nav-pilot-darwin-arm64"
      sha256 "7ed1b2922d6cc7636f09406d1630cb50997f90ae0963565890ea5dd8c8135f3c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-122224-e556868/nav-pilot-darwin-amd64"
      sha256 "dde5cd4d2e68be83bb86f5927842f8494ad8f050c53e745a04f634306da560e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-122224-e556868/nav-pilot-linux-arm64"
      sha256 "ae670528999b282890565f3dacc550b32addec26488cd50c570ef476858665a1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-122224-e556868/nav-pilot-linux-amd64"
      sha256 "4c78413fae0346ddfce98843ca7e43cb8badc739234963a72cdfa228da272ba7"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
