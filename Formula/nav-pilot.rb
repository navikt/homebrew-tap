class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.06.22-085256-3c6df94"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.22-085256-3c6df94/nav-pilot-darwin-arm64"
      sha256 "48fd9d19f9f929a1f2cbc96cb723ecaecfc29bc036180ef5bdb7071c3d0b371b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.22-085256-3c6df94/nav-pilot-darwin-amd64"
      sha256 "c1768f868b235d0853a59b2c9d461d7944cb0788673ec4d8ee574396f6642ab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.22-085256-3c6df94/nav-pilot-linux-arm64"
      sha256 "e818cdaed8d017f629c244f839f336fcb236e145bc38105fb997585a4daee8f7"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.06.22-085256-3c6df94/nav-pilot-linux-amd64"
      sha256 "d4b5420c00c1e887bdc477c84d6f3a7f8bd0d100e970946e8f32f2c93c185aa6"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
