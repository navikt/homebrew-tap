class NavPilot < Formula
  desc "Nav's institutional AI developer toolkit for GitHub Copilot"
  homepage "https://github.com/navikt/copilot"
  version "2026.10.12-085444-721cd60"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-085444-721cd60/nav-pilot-darwin-arm64"
      sha256 "7e666487fd8f95f964c1aa774e9e4d995e17cf584b2b1561a7f2645c71c4cc41"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-085444-721cd60/nav-pilot-darwin-amd64"
      sha256 "82f749190a99091ce08c29de2780c9d2e1ce5b78fc9bb6a42300ec735ca5526d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-085444-721cd60/nav-pilot-linux-arm64"
      sha256 "b2a4d0e3f1c3428480b3d4898bf93a6b712b449b60d7697a9744d50ede79d02d"
    else
      url "https://github.com/navikt/copilot/releases/download/nav-pilot/2026.10.12-085444-721cd60/nav-pilot-linux-amd64"
      sha256 "36488db98a48bdb426f8318edfe5eaa880a30e66f65e2620607278e0123f2bba"
    end
  end

  def install
    bin.install Dir["nav-pilot*"].first => "nav-pilot"
  end

  test do
    assert_match "nav-pilot", shell_output("#{bin}/nav-pilot version")
  end
end
