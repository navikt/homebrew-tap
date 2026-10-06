class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.06-175850-6aa38c8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-175850-6aa38c8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2bece89bdb18dd9c5cb50d4daca8c6858b4cf98b49040a39aa644a2646674bdb"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-175850-6aa38c8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "9608b0d8f141e42629e7efc33ae668c72723517d25cd645b05dec738458a487b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-175850-6aa38c8/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c429e12b1d313d01f0789253eaa2377ae97060c4e9384139c410c0a39b940278"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-175850-6aa38c8/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43d98faab4a54d49d9992eb2c570cda74b34580bf1d62616a1e997e535ae8954"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
