class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.17-124555-6dea4cd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.17-124555-6dea4cd/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "38183a7be8ca7b989fa196daf1058bfd35fecb1d0736159ed978a5e86ce0b35b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.17-124555-6dea4cd/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "23123290c6f4928dbcdfb41927725c7d66034bbdd165da2f7508ed5aab1e8065"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
