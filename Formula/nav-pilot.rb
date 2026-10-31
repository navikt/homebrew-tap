class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.31-184428-db7a33c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.31-184428-db7a33c/nav-pilot-darwin-arm64"
      sha256 "99e63566f2b491f1544af1f54b8e88389fe18165d2da4870431860e9d5bf20b8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.31-184428-db7a33c/nav-pilot-darwin-amd64"
      sha256 "13d3eec6f881179612f8be4ac1bc7ac0feb4ef63dc67b92b95efd6cdffb7f24a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.31-184428-db7a33c/nav-pilot-linux-arm64"
      sha256 "e153461a4d1cc2e95af459f524f93244e3dcf6c8b3933098f2f061d9a1ecb0f3"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.31-184428-db7a33c/nav-pilot-linux-amd64"
      sha256 "02735dbc0c690cf4a60a54add049d8a5fe4ec01ee29f8ecaef6a856128b07d21"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
