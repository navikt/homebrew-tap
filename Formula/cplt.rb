class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.28-102542-07a6ef9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-102542-07a6ef9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "62d0a56ea99229560bcd7b913a90a9b0ff1f16c2547c47d8c4e2b1b17a2bcdc3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-102542-07a6ef9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "94c64fd1c1ca9fb679d1bc4f322457b23b942587d25c0b46161c11a021d4669b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-102542-07a6ef9/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6d62d090e409d23c52ac910f48c7f46268c75fd89892fb6d7f3cc2a45f1950e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.28-102542-07a6ef9/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba933208771e45c14520a928e6a95c159184de477f2033cbf5d1bd696419d6a5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
