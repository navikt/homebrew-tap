class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.23-135417-8852429"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-135417-8852429/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4501286f791a2c79de3f18f16cf8f9fbbe77ec8102497e1152883773d5ab3be0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-135417-8852429/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "289c557d9093e980b206995fc61cc67857015ab9eeb53d5a9d2b083b1983be9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-135417-8852429/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a080c52b39afa4b66b03e8e5052d40af51b964f31c64bb1aa24a3463cd6da18a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.23-135417-8852429/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f016833e7bdfeaf208d2bca7a1f60365045322250a1abd90eb2c8a9f3e777f27"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
