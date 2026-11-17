class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.17-184534-d36f3c0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-184534-d36f3c0/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b4aa6cceb24477b3101f80a076fb4ee7a465b609dfff1a1aa3b8717a15b81850"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-184534-d36f3c0/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8b1c5661af7dda91e9d645752f10626143c709418007abc92019b4789b8f47ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-184534-d36f3c0/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64af595f2cd2b1969be6477b28c4cf4d4df6e107a280109cf44b7908613ad35b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-184534-d36f3c0/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78b899c88d5f4a814ab361692ce21e3676b1b1b8ee8028a055374eb168a3b41a"
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
