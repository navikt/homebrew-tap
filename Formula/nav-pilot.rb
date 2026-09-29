class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.29-101104-df80748"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-101104-df80748/nav-pilot-darwin-arm64"
      sha256 "7f705fde16cb13a8e6dd5cada1ce718b0f21702fd6b11627a79725b4431c897a"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-101104-df80748/nav-pilot-darwin-amd64"
      sha256 "4c867ee6bd462364ad06d5871135beed22aee9dfd3e2edbddcb6cf1e16ce7343"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-101104-df80748/nav-pilot-linux-arm64"
      sha256 "b181a04a1015fe69b0cd3fb917a730117b8e3d2fe5bb1b5b3c296b41f32d5b53"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.29-101104-df80748/nav-pilot-linux-amd64"
      sha256 "84c31d5395ea39377e28dd6445ccd292a667e6d9bad6bb50483f509425cb6140"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
