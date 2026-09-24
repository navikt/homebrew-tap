class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.24-115815-8150891"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-115815-8150891/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "38763619f2416afc83e6cd2442c103dc32fa04d9ead19e2d2f84d31134c6c747"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-115815-8150891/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "3d39f238d8ec2f5ed4c8d246aab057fa528b7d063d5b850a67fd2a28968ede87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-115815-8150891/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f220d2274af74ea161f8df1293695d080e02568cdef8823db2eebcf5de0f119"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-115815-8150891/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bab70469353a3632c119c2dea5ee93a10c080384a21de016fcaec5232653cabd"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
