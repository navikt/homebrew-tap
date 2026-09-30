class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.30-215825-e88103b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-215825-e88103b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c7b456022d82f9895a45428882c0e9c3cb8b1cfea9b844430e96d36ce9a2d2b2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-215825-e88103b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "6ec577a9355e18e53a90fde00e26e74bf014d527d0c76e7e992241edb9ed66eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-215825-e88103b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "105d7ccbfb30b979cf84456f77ba1344d9d019907a57f7a19a4d77ef7514e9d0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-215825-e88103b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b751eaa4f610365f336b783ba52dc3fc0eab846ae130846dc9b487a9e39242c5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
