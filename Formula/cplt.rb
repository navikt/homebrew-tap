class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.17-141547-aa8caf6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-141547-aa8caf6/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b2b9076194b26b27c4d8a881a03c5db694ed538e61dcb30e33d1961235590cd5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-141547-aa8caf6/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fab0a8b7530596f5275c13ee7d7e878448db64c951fee9ca6949624976a5ace1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-141547-aa8caf6/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9975f7a934a90f69de064be1a4624c9bccc385f9ed2b5d2bbf1a08681cd52f6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-141547-aa8caf6/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d67ca841e1d743ffc55c1cc7c2c523e9b3876ab32b0f7e0429159ad6b4ddb6f9"
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
