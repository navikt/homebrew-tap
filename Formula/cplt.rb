class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.06-133656-c2cc167"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-133656-c2cc167/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "370d61dd24025f25d04073cb246ebaa9516be39bb8c254358a46aa5e14d0ee8d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-133656-c2cc167/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "64577139505d694c05e9542c8d193a3c129d917e16bd43028c836e357e74e848"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-133656-c2cc167/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9a1e4aae0536b0ed35f061fbfc3cef41ab2d33a2a5107635c6557ce4971de38"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-133656-c2cc167/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28af53fd50f6113610b6aae7848ce2d5c385f183c4d42374e47da7dbdf62237c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
