class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.24-224415-2e1e8ee"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-224415-2e1e8ee/nav-pilot-darwin-arm64"
      sha256 "de2c7c9343b918fc356e70baa62bfa2c56dcbe3d216b6558814880b3a28006a3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-224415-2e1e8ee/nav-pilot-darwin-amd64"
      sha256 "5efe22cf1dc457ee0da7b7ebcdda60e4ced16ee1c64ee96efe9fd989ef5d854d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-224415-2e1e8ee/nav-pilot-linux-arm64"
      sha256 "ce847c9b24f31a823253d47b9adbdacd42d318322d341acdbd3c25cdb535ad21"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.24-224415-2e1e8ee/nav-pilot-linux-amd64"
      sha256 "2baab794f67b979dd4decf9a4659d7840231ab5aa22b03ab2e17c97e56166fed"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
