class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.09-134355-aaf8e15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-134355-aaf8e15/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "481c989df45416943bffa526775f94e254e25787da388c9cbc3795fedccf500c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-134355-aaf8e15/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8689e2380eb27cf3ac6e95f34e4f82833c16b25df63ab4724a3c537926b4477e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-134355-aaf8e15/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b1faa63e32404257c716bbf74586795cac319f735247d8ec889191146782723"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.09-134355-aaf8e15/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea0fd1ea34a80a946c1a66a2121d9d3cd8535d937c71f69c9391f0f900a784ea"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
