class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.05-091412-096d1a1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-091412-096d1a1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "de9f8f678a5260168f99da2a0a82c377d6930db1eab4e7d66e63488d8fc1ded9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-091412-096d1a1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7846aaf13de43274fb3db73ccb95d8ef53c5dde44b819c10fd2eef37fc13a999"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-091412-096d1a1/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4dff779eeea9c62967d7f1caac27e9f0136acdaea4487504c99f955a9e39b65c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-091412-096d1a1/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "011a760ffd03f257629bbeafc8f24f91bb51d16fa5b9f564e366f808e95a82cd"
    end
  end

  def install
    bin.install "cplt"
  end

  def caveats
    <<~EOS
      No cplt config yet? Run this to get the recommended defaults:
        cplt config init
    EOS
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
