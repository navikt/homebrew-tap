class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-221439-e7788d6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-221439-e7788d6/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "50822f51b54e33e443dd84caf259550444b352b162b6af6a9543d532aecdca2a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-221439-e7788d6/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "911266cef995a6f0aaea7a2f63fc0edb643adbf5b3f55794fef1ea4ce7e3e2bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-221439-e7788d6/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd9991d3a93002508e230adea61e57826cc171fa68155900494b2a07a00e85d8"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-221439-e7788d6/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d953571e121e6b00ee4db0e5286198d80f0dfe3f70a7a1e2a2dc9d8e5e21ac76"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
