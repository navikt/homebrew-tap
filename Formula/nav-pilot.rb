class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.05.07-200232-fd4e9e8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-200232-fd4e9e8/nav-pilot-darwin-arm64"
      sha256 "6b9a187c6e754a0f40f2e21354d790df6638855287d4ed35ec3456af78e38e89"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-200232-fd4e9e8/nav-pilot-darwin-amd64"
      sha256 "b78f7e83c99271734c74778413db89804778668d7faf50cc7c7cfcc82d2bc68d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-200232-fd4e9e8/nav-pilot-linux-arm64"
      sha256 "0f3cceb41a1362fe96db8b68129db91070b08c5dea91c163412a1105821313ae"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.05.07-200232-fd4e9e8/nav-pilot-linux-amd64"
      sha256 "55ac0f3a08f12e8910670ee05487d65cc606b7fe3ca719c975df6aec8625029e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
