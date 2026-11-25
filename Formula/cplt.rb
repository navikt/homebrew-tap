class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.25-090317-831cdfa"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-090317-831cdfa/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "55ef02eee63541d697147510e6282b59375e8d70a2574cd5603228e99e475c1f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-090317-831cdfa/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a365ae710db5cc262e101ee683206cdcbe2c73b1d51506aab2bfbbd69795682e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-090317-831cdfa/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d7b526d6e5f3f400ce2ef659bdc494fb469cac69395d1a8180bb00d3c5b4edb"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-090317-831cdfa/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4edb8ffe46ac5f908584ad1d468a4e65cfab4bf7107370333b27b08676ee34aa"
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
