class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.21-102123-1dfd69f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.21-102123-1dfd69f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a89e54193538d491881216a86c2c1b4c89068db73e1743ee5a3a2f9d289d5b39"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.21-102123-1dfd69f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c777e707c07273ae34e3d31138a0a00403cfde3c2d313284ff1cb48eb38faf7f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
