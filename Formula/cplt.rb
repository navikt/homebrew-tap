class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.30-110556-eab7fb6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.30-110556-eab7fb6/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8e163ff80a34fb8a190f2917e969c2761a3eec9bcfad53207c680eac76b68fff"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.30-110556-eab7fb6/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "25de72a6ae5b2ada05848abab4003afeb8a2228e58118aeb0085e375e4e288f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.30-110556-eab7fb6/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "959278baea300c52c64f02b3b745aaa23980e5ce00f4930dea4017ea6b2e3f7a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.30-110556-eab7fb6/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8116b83c9df443cbfd6f16f91d000e403f6bb39f1e98f13014e2bfa843d98630"
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
