class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-200555-4be9e4c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-200555-4be9e4c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3f1fe9d31d7156dc692b54eb8fd1a0f7c17861a175831d4654939a9f3960d22e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-200555-4be9e4c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "8317fb26433ef9847f52406cb98f731ccb15bb421535cd5eb012fd937d1a753f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-200555-4be9e4c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "473d7ce44f0a1ab30a28c343253b2a9f59dc053ad79611fb933a9fb4e843cbc6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-200555-4be9e4c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3659d2d155603a0668734a03da1d39ccf6715e17e10d5f1978b582b5a80807a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
