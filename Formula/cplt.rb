class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.05-173125-b9ae0b7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-173125-b9ae0b7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9e87eb814516951ff2f9bca3a5e3c9d8d5f6ba05226470cced6762e0744a05a4"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-173125-b9ae0b7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8d699512ed3ffc3563f5d1a627cc5e206e4b33216fed832a7a82370942e81a62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-173125-b9ae0b7/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca4bbd536cf298d39f2f7496672c073384ed1911e5f9804d3cb6c6ab39783b7c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-173125-b9ae0b7/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e807630edf9feafc43cb17f0b44bf056ffe600bf7e1d15a6313b7157a7471f3"
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
