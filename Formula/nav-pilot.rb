class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.23-091446-cfedfab"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-091446-cfedfab/nav-pilot-darwin-arm64"
      sha256 "adc81f5517fde2ed3d6d089c7d1cdea204653159f957112c89a23d1d83426fd9"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-091446-cfedfab/nav-pilot-darwin-amd64"
      sha256 "1ec75a7bcb652a454b852d0f9939ec102ff5f4796d070e9ac924b1849b718ed7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-091446-cfedfab/nav-pilot-linux-arm64"
      sha256 "65f60e44f9b98cb0beba82841b783efb7bd050c613e6e9e41206b0c08dd19aaa"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.23-091446-cfedfab/nav-pilot-linux-amd64"
      sha256 "3b4c136bb469d1a87fbc1f3fc24444ec3db40e70c8e2e46395bf61fd6ab39726"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
