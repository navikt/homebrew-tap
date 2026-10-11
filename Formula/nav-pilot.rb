class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.11-201029-b998fab"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-201029-b998fab/nav-pilot-darwin-arm64"
      sha256 "ac78db075273b8899a7e9fe1b0c7401bd1dd165ff9f33705eeff2dadf86fd7b4"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-201029-b998fab/nav-pilot-darwin-amd64"
      sha256 "0a632cc99717953a401bd10760de8fddcee7cf2221b6917f2a35e5ffa4b269b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-201029-b998fab/nav-pilot-linux-arm64"
      sha256 "8e4622d922809dd7691998f4662103826f07fbc3ee1009ba352ceec1f2e59ae3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-201029-b998fab/nav-pilot-linux-amd64"
      sha256 "3f02800076096cef43d4ce0efc82cea5f6cb676c3bb190c25ddd576cb4c0e13a"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
