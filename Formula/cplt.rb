class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.21-101623-be4ec12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.21-101623-be4ec12/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ff00d87d394c6e9e73ae081d722036ab01bcc96ad6f0b526dc2d997feb820705"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.21-101623-be4ec12/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f92346761d2a24bbab1896e6c63714c5e31c65cc2778d001ecdc2b1aa3ce4950"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
