class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.09.15-091150-d2f7a10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-091150-d2f7a10/nav-pilot-darwin-arm64"
      sha256 "a3e2ebc9c77f16e76a6a22458cecb20791a73c4df579d2b0da5756221d551f7c"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-091150-d2f7a10/nav-pilot-darwin-amd64"
      sha256 "570f4115401f60f80fbd79f2b4f476a10f0c4133debeeb9a3a1df0a95e3eab4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-091150-d2f7a10/nav-pilot-linux-arm64"
      sha256 "b639cbe8a327bba003a33bad7cfefec3115618c38c1fd920da825ef71eb67ab6"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.09.15-091150-d2f7a10/nav-pilot-linux-amd64"
      sha256 "8a15a364268acf5917ff9fa5f6565b9b9b4965b272c42db2aa5435a64fb28c6e"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
