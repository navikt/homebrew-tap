class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.27-150525-c553930"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-150525-c553930/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e964a2fe26a238cb06c4901c8cbf03b535c86a37b054d9620c5f962341b1f4cc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-150525-c553930/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "b0ffe06a4744a552d5d1c29a2054a0a2bd3bb5c9b92a432ce0d33d479b482a96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-150525-c553930/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "584735d3eaf6565fb8ea4bef6f6a4dac0b9ff7b734d0117b5be8057d617260b3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-150525-c553930/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d3ae4a57ed17348bac6b1b11abcd3ae79e0f92f2d48ccf501b210b9907e58b2"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
