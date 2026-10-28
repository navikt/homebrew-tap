class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.28-175215-6b755b4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-175215-6b755b4/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3b6cc47e50d6fedb5366180f8751452783c5805b272c8db9fe32f035d5452972"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-175215-6b755b4/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "abca6c8bf6a998b3939313e07686ff0808e5d6b4cf166eff32b9b44dab90ebe9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-175215-6b755b4/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ee2c2cc3ac129a49b6826cd919f74b5b65ebbc68b7e582bca8167c8cf3517dc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.28-175215-6b755b4/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bf4b1e66f4849d46c61538e6b83dcb9c99bc4970b80965e9f58d1f7249d1796"
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
