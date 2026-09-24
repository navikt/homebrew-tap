class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.24-175140-161877c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-175140-161877c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4c130b976d714a5ed9b5239ca042c7df24d49f013e4dba1103b75b4936eb7d30"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-175140-161877c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0f5fb3258143b83b04436b0f82c053ea68026225acd6ba96c9ea8b2bf380a3d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-175140-161877c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "522ab9ea535761f2e4cb3968af29d97dd460166994ff81d4f1313a1ee21ad9f9"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-175140-161877c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09e1b0f93cfc1fb50dca41a42e1b49a8c49e86581a94c1d6f1ac13af7b33b361"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
