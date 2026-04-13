class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.13-c9a1348"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-c9a1348/nav-pilot-darwin-arm64"
      sha256 "02155e503b8f91ce3102cc0c09c8c3050f4e663f7890a5796d721621d69385a8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-c9a1348/nav-pilot-darwin-amd64"
      sha256 "1765a498afaf7468926d861a54c820d2704eeb244f94e2d13aa2219ac6e69c2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-c9a1348/nav-pilot-linux-arm64"
      sha256 "f651f3a717758bc0ef518fee1b253a7ff0f3d68e3613f71b764aaa4dba5dabfe"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.13-c9a1348/nav-pilot-linux-amd64"
      sha256 "6ddc5543194a432046c2c8c78f7c60c0243a647deeb6f54cbf7cca66f4b9b4a8"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
