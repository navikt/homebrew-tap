class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-161647-1f180f3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-161647-1f180f3/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "53fb7c36ccd15c280faefb124f157c5614a89b3cebccc6bb8968bedd437bab1a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-161647-1f180f3/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "9d5039f3ba974fc0d655459c7ccfe2acb2d7df7cd39f0816815ddbfc3e8034d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-161647-1f180f3/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "26802b083e0fc3e2a81520dbaa0b362daaf02624d28f290c0f41ebe2b1815619"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-161647-1f180f3/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "961d4285ae2c6856f2c5f3916d77c7f2aaf1f786b68f3596353397f753d3e444"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
