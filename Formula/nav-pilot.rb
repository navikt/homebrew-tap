class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.16-215520-53c47ec"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-215520-53c47ec/nav-pilot-darwin-arm64"
      sha256 "3446e90588ceb0cd430cb8be6e3bcea01ba80d854b67fb43dd1d4ddc3c34b88b"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-215520-53c47ec/nav-pilot-darwin-amd64"
      sha256 "dd41c8e9559cbbcb71627906085a705321fd66c4a97f97170c052514296927bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-215520-53c47ec/nav-pilot-linux-arm64"
      sha256 "66432d92be5580a097b1cdf35bf4a975ed92921c70d666e98ea1306d435ffc57"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.16-215520-53c47ec/nav-pilot-linux-amd64"
      sha256 "b33de23ab4e691f5e215d29f47d2869c01810d3d5c8a867e13ea04e4035fda1b"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
