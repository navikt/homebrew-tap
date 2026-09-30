class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.30-195743-48e9f70"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-195743-48e9f70/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a640cac5c04ecfcdf7e9bfba0da920bc81decfbaa65caec0776ac6995d538891"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-195743-48e9f70/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c5cef2828b96439d5a9d530177ec43eac9b7f023f0864837b721605da62b151c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-195743-48e9f70/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec7b7927a10ff79a751d8fd6cdb23c1923ea2d83e674fb449c8c9aaaa1e9413a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-195743-48e9f70/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2b95036428126aa823340ed57414103625098b35ea4d6fa86dd29d4ef3a5450"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
