class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.25-182607-a5d1c8d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-182607-a5d1c8d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3bac26eb1568c17b55f2e6c08a794cfdfd1903a38cd506a3f2b18c9e9add183f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-182607-a5d1c8d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2bd6cd8da9bc2bb9210568150a05264ac7870c74cec6c8a35e915d007806528e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-182607-a5d1c8d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b975ce68b3f04f8ef60ce8ad89a4bb05b253886e95424c86286f540997bd1e33"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.25-182607-a5d1c8d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a89afb5b103620aa706a71f11628e83cb8919dbbd2586d45ec7ef54f9dcfcddb"
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
