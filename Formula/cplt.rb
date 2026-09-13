class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.13-135112-daf7f1f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.13-135112-daf7f1f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "efdaeb6133b50919f58de611546fab523ce1698623af88470f9a654aecdecf35"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.13-135112-daf7f1f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cbd89630231619d4f2d06a1a59c86c14ffdca7f27e34d8005bacd7124e5560fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.13-135112-daf7f1f/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ed30c0ad2506e52214c2aff3fefc0131abbb2ace449fabb40a2b95d1975d135"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.13-135112-daf7f1f/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "acfc886997ef1d92ccaf5ee181f2cf3ae822d915dce2f26e2b5776473c4b445a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
