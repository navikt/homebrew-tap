class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-094343-2bea110"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-094343-2bea110/nav-pilot-darwin-arm64"
      sha256 "180cc9117f906e47973e5f11d6924d37265a72d66b77022a72f51c60df1fd160"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-094343-2bea110/nav-pilot-darwin-amd64"
      sha256 "6b9da409b4118a277d3937bb2a549d711cfd2790cd9d6132f108ae993c38ba10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-094343-2bea110/nav-pilot-linux-arm64"
      sha256 "1565aaa38c034b0a9fbef7010c94e38cc16f53680058f503b019d370192371e5"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-094343-2bea110/nav-pilot-linux-amd64"
      sha256 "4d5cabbc2bf1e00e78708bb91e9b98fdb8a54f45f1efd2d0b3c1404dd968912b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
