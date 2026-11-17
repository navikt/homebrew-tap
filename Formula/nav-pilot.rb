class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.11.17-092707-d2f9890"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-092707-d2f9890/nav-pilot-darwin-arm64"
      sha256 "e361fcd629c3d9047e2202a75b3664a044dec02b82d694e5f3d273dd2dd3ae47"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-092707-d2f9890/nav-pilot-darwin-amd64"
      sha256 "cce9e9098fe7398bac451707b0e3d0e2578b8832f55dcf8442515f91eb99edda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-092707-d2f9890/nav-pilot-linux-arm64"
      sha256 "d7efc3136ca50866d162882fa8cb855a38d0a38b78fdd674bc36f6910dcfd441"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.11.17-092707-d2f9890/nav-pilot-linux-amd64"
      sha256 "9b80a2a556cf91f344bbabe67c5f5d65d8bd74486532e718e7be9f9bc000f357"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
