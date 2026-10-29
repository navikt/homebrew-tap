class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.29-115649-c087e0b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-115649-c087e0b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f9f01832f1a94fcbb7b0751208ab06ecccc9b752dba63fd281e101c938d49fcf"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-115649-c087e0b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "80eae6c69e642be9114e70afb1a74119fd5d470a0a551d624a4a7a602438f3c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-115649-c087e0b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0ca8125cf8e458541d9c69f781e7ebfba9eaab0aa0ce1f621ab83ab8b699967"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.29-115649-c087e0b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04cb0bf694bbef2f4ec23fb352fbbbfb129cd18bc48b24d5cac6a8a2243aed5b"
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
