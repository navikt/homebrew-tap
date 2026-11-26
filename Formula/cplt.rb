class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-090930-8aa78bd"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-090930-8aa78bd/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "60ed9ccf78fdf282a77c9134f4a5b0f23663931ff24b4466fdffd21893fabc1a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-090930-8aa78bd/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d6d144c3eb6a3fffeb1a7ee2efac35fa97a8b88fe05bcb26d8fe6051fc8fdd58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-090930-8aa78bd/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3735a09396db00f67a4d3c55c8cd5bbbfe6f8a609d417eea77a19894e267490"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-090930-8aa78bd/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "821a70b9bd97d2a52906dd160fae04176cb5bbb7bd2826e22e17868c7c1bd460"
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
