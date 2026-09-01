class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.01-211944-0f62b0e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-211944-0f62b0e/nav-pilot-darwin-arm64"
      sha256 "236cf8c01ebeba01c2e34758580e36fed64a2f1f0bbbd42ab4eaf0b040d3d3b0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-211944-0f62b0e/nav-pilot-darwin-amd64"
      sha256 "52e36421d5df276186e357ebe5566b8e304f4ec0391b7be88aab9db17bbbec9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-211944-0f62b0e/nav-pilot-linux-arm64"
      sha256 "789b0480ccfe40d26f0bc780fa95e2aaa70c98a92349743976a41dcac936d108"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.01-211944-0f62b0e/nav-pilot-linux-amd64"
      sha256 "64b3923962bc49e22c1d853df8fc63147860103b850f589ee166044cec8617e4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
