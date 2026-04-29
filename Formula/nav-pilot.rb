class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.04.29-192934-4b477bf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.29-192934-4b477bf/nav-pilot-darwin-arm64"
      sha256 "cc8a4094a631a98b7dfc4ed2243b827fb5256a0862cbd42fc632c45d52e8bf53"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.29-192934-4b477bf/nav-pilot-darwin-amd64"
      sha256 "3078d4d8b651574753504cdea04ec52d1b3ff93acd090bf754dbcedd3c2d9605"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.29-192934-4b477bf/nav-pilot-linux-arm64"
      sha256 "ae64e1804937adab329789778c0dac72741556c1e157d30edaf5a0105e2a07e0"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.04.29-192934-4b477bf/nav-pilot-linux-amd64"
      sha256 "5aeff470172d69dc7a41e4e391b023cb4feb477e59305ecb86aee64dc1e25b64"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
