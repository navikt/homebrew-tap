class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.03-202535-fd247f7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-202535-fd247f7/nav-pilot-darwin-arm64"
      sha256 "5ce02d6228c2bfb2ce765e801e07aa5ca7e1dc4fc69c925506e3d923a28e0b0f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-202535-fd247f7/nav-pilot-darwin-amd64"
      sha256 "2e6192241087e58e348b74a010d106728625df096e30af1b6bfdb6c4cb114820"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-202535-fd247f7/nav-pilot-linux-arm64"
      sha256 "496d4e453976827c39e1ad1dcf1367289d6b0ae09d49950353e5a00e3edd3da0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.03-202535-fd247f7/nav-pilot-linux-amd64"
      sha256 "eb15c100081171a61dd724bd5cec5c0dbe415c6f30614ac34313aa67c27188d6"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
