class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.11-113554-5f4038c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-113554-5f4038c/nav-pilot-darwin-arm64"
      sha256 "21b2ee7a9abb9c1c2753e6492a25872491058777f7b6d3639940ba5a9318a200"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-113554-5f4038c/nav-pilot-darwin-amd64"
      sha256 "e830a188c4ae91f839531ab98eff2f4b73a0f1c319afe0ae5f77a802a535f715"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-113554-5f4038c/nav-pilot-linux-arm64"
      sha256 "f481dbd9cb9a4e90cdaa8e188b360c6eac1cfd3c46d16df73927d30d2d7b5ce1"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.11-113554-5f4038c/nav-pilot-linux-amd64"
      sha256 "f300f5eacbed29f19cce4931c8f3b84b5ee872748c97f91034338ae4a787b97f"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
