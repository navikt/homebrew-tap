class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.17-191259-e1aa00b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.17-191259-e1aa00b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "dcd8f9ba87bc8e1dcf09559d0f9bad7196848628ace9aafe9fa6b2362b23b09c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.17-191259-e1aa00b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "303519b6cf208892e6fe79c2e82840bcb35f35b5ec95de3d2353da1352cf23fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.17-191259-e1aa00b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f33459e8f2b6a105163f8ba9bd0941b8bdecd964fff32b9498f8146da8f73ade"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.17-191259-e1aa00b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a74690747e082c10f44083d2a22ffbb10d921554ea145f91f75cf08a6989d9b4"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
