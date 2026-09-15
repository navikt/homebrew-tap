class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.15-175926-f3614e6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-175926-f3614e6/nav-pilot-darwin-arm64"
      sha256 "1e414ce9f0a2b38580d2659fc636e39eae664c9a0acf0d63c6383df3d3f68bc6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-175926-f3614e6/nav-pilot-darwin-amd64"
      sha256 "d1746331fe3872cab90fbafbdc88579fec444d3f60174981ff6ae94ecdff74f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-175926-f3614e6/nav-pilot-linux-arm64"
      sha256 "d4eda7282ec3a2874b3bf1b974f86ba99b2a69b665d66121c37c3bbb0d4d8a5f"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-175926-f3614e6/nav-pilot-linux-amd64"
      sha256 "f97f551e3f8804a6bcb0a66d6589822838297ebcb09013edea6af05a5ae3d45c"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
