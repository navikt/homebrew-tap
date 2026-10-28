class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.28-203636-9a019b8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-203636-9a019b8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0c6058e637df72a31c0b0f4cf5f394de49b03f6107e49a05c6b5b6ba85ae1529"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-203636-9a019b8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c35b11a0b628391e7379e51a70fab37899fe8d6824683ee4d640680cb1059646"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-203636-9a019b8/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19433325964986981cade3b5bf58ef954b79c72a7df9edb40bb2e49a975a45e0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-203636-9a019b8/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d69936180f0db33efdf69c39dd5da102bce494a9fb35a6eee4b07cbb12b8d44e"
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
