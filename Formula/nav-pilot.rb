class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.30-112711-daacf1d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-112711-daacf1d/nav-pilot-darwin-arm64"
      sha256 "b9e0ce71764b4cc676ac3770b16cf4166b82899ababf883cdac0e833954c55ac"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-112711-daacf1d/nav-pilot-darwin-amd64"
      sha256 "3baf56489aec6c6abd9c2db93d7dd9358afb6fc3058a75a2b0ed714c700ccea5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-112711-daacf1d/nav-pilot-linux-arm64"
      sha256 "e2fd40517dbb19cbf5b6251e5db201a995b550b031f529ca1cb5a1a4528d7154"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.30-112711-daacf1d/nav-pilot-linux-amd64"
      sha256 "93331271a4f89f157b51eed715769e16bebf408d4028cceedbb61d8049605d20"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
