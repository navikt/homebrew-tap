class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.18-064656-1bf3fb4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.18-064656-1bf3fb4/nav-pilot-darwin-arm64"
      sha256 "043cd158744f401b3936d4204dd56167a7b99329ba1d56f01746f20f918f1fae"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.18-064656-1bf3fb4/nav-pilot-darwin-amd64"
      sha256 "91034501ffb7f1604818eaee54cce81f13a0fa07ec47a09081823248ed9ab4d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.18-064656-1bf3fb4/nav-pilot-linux-arm64"
      sha256 "003653a99f11e7a852aeb2b70004b03d98bd31b49839a8f4c0a1b89da04e4446"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.18-064656-1bf3fb4/nav-pilot-linux-amd64"
      sha256 "ce5ede8f19320d9608f39a3f7b17030c8a94df5ac5f5553b1f1b7a30453667e4"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
