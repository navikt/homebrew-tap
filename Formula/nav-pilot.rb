class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.14-142628-4d72d8d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-142628-4d72d8d/nav-pilot-darwin-arm64"
      sha256 "ccdc4a5b17c1b19f405b4336df7a2b621482dcad3fde53fface69a0fa3bc89b8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-142628-4d72d8d/nav-pilot-darwin-amd64"
      sha256 "336c13f75e3696e3bb44262d4eaff33f3ed3bc5ccd51a541771716d9d36ada88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-142628-4d72d8d/nav-pilot-linux-arm64"
      sha256 "2794402e861eef97792cfacac6299fcab131bec8c45d68816bce97a1ef2aefda"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.14-142628-4d72d8d/nav-pilot-linux-amd64"
      sha256 "4753d28a0e1c09e15351354e1676aa89514519975457554735290ff2b8545500"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
