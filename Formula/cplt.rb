class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-153933-ab2207b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-153933-ab2207b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f5928597b8ce148932bd4384e49dbcc5c19ac37948cf6b605e9c416cf495ab92"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-153933-ab2207b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "52e415843b85d556ec07cc76faf8102c179ba6eccae58dcd58d7961cc3c963b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-153933-ab2207b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a40b46bfbcf1a56e43122d8dd7fbb7d0a6df6df210ef4435da359946996a4770"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-153933-ab2207b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d20330448a4db1a63f0233bd03984ae1ffce9843984e9b6e1a6e4712a8d33c2"
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
