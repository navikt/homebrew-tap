class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.25-064550-d21bf18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.25-064550-d21bf18/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3a39118564638ecd1af1cf13e45f118d124f3837352d825ae79fa0a048282838"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.25-064550-d21bf18/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "42a4e7afd5a2d29d5f7ee6c949ed7eab52f0141e7d89e43c3de9bfde2691e870"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.25-064550-d21bf18/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "348015dff777e119f163ac3e1171701b7bd093df9552e51bdbe026c10214618e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.25-064550-d21bf18/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ae5469624ed53f1736a2d39454a6db352fdca20008262327cbb0dd07315e0ba"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
