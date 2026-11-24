class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-014303-6c3669d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-014303-6c3669d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "665570cf4e6bcadceb8b1f54f2898a72ae2d9811860adf1fe734d77aa683a083"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-014303-6c3669d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "daba24b8877211369b0b7195df4aa87b2de19d9f807bf1cb70a8e65abced0ed5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-014303-6c3669d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2741d8381dc3b8836495f951f6b22c1dc0ac4682fbcacabeaba33013c75033fc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-014303-6c3669d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2024d20f86bbbd2ffec8bbade11e8fe15d0a91e80d455fda5a9ac931d39a2f7e"
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
