class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.17-180311-f584bf5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-180311-f584bf5/nav-pilot-darwin-arm64"
      sha256 "4f76731e9e9e79d58d3108aa449bbc4d3839241e7b19ef20d883158c7e5a43bb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-180311-f584bf5/nav-pilot-darwin-amd64"
      sha256 "9872f07f6fa57b8ac9f3baccf8978ea2b6adb2c43be601dc4d78243adb95da71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-180311-f584bf5/nav-pilot-linux-arm64"
      sha256 "0413e4879867ca090755a6f822ff08c7ab40a754f03eff43535ad5a6d5adafbe"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.17-180311-f584bf5/nav-pilot-linux-amd64"
      sha256 "95c6a2f0f605a1d1cbce7099eb611c626007db4ae46aba2e79b8667f3bfbb050"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
