class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.08-082947-42f5d7b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-082947-42f5d7b/nav-pilot-darwin-arm64"
      sha256 "e528d8aef2837c172ca5faddc1bbd17d155b2910fb78e0851a8673fe485d3335"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-082947-42f5d7b/nav-pilot-darwin-amd64"
      sha256 "80773896c339e263bdb81f4528bf9a9785bded24f262cd172f52f2c0a68674fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-082947-42f5d7b/nav-pilot-linux-arm64"
      sha256 "6b764a03045024cae92ff771aa6dbf73a3631ec514e5556248a88a2e577fb690"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.08-082947-42f5d7b/nav-pilot-linux-amd64"
      sha256 "c1d6a069c27a1d069a0d7656503c3363526a666c006b193bb1d90be03ff7b4d5"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
