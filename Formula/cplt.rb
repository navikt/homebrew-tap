class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.27-085557-b41b49e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.27-085557-b41b49e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7aa2b4a61bcd7288b41dad04b0cb8d8ca5e3172a55cb62415d90d243f4d6a6a0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.27-085557-b41b49e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e3ff606a1487a146106ef2f9fbb34519e4d68665be833dbb813346e12040d717"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
