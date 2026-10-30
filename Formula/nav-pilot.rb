class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.30-103503-58ab4f5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.30-103503-58ab4f5/nav-pilot-darwin-arm64"
      sha256 "751139084888f188f25d2577350affd31b2536ec18d481e03c977132fde28ac8"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.30-103503-58ab4f5/nav-pilot-darwin-amd64"
      sha256 "07a2bc23404fcec6b263b08df68289c943152262c3f462f393c28f5fc25ed47c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.30-103503-58ab4f5/nav-pilot-linux-arm64"
      sha256 "974e63444b028ae519252641d250e2275723a377311168d4d625f709d8f7bc81"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.30-103503-58ab4f5/nav-pilot-linux-amd64"
      sha256 "f66ba108a25c3be0047345d554416299459db36546c0e0f9fd53ac2be5335c26"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
