class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.18-082649-48dc24a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-082649-48dc24a/nav-pilot-darwin-arm64"
      sha256 "10458a4ee602cceef30a63ee205109bfd2af5c6d9f50d222d6afce58a0fda17d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-082649-48dc24a/nav-pilot-darwin-amd64"
      sha256 "e966e14206e33a25d7d5d5188644cc4a9438a20d07537aed5ab0bb9dd697dbf9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-082649-48dc24a/nav-pilot-linux-arm64"
      sha256 "aea7db18aacc164d6f11d61a41a8a21ec6ab26c3fdc79fa0af2e2ddd4fb561bb"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.18-082649-48dc24a/nav-pilot-linux-amd64"
      sha256 "989d0dbb654a483222e0a1abeccbe1cbc691fd666af002578d4fcb3f11a7433e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
