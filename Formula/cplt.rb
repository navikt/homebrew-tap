class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.04-112710-87fcde1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-112710-87fcde1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7a39a38e1e26677f77cd5ee978facd2482963a608b2cd5e44dc9d9ec8d739acd"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-112710-87fcde1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "6e93fccf476b871a3c951fc2fedf3a94092a60d8810ffbafa3c6daa7929dd10d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-112710-87fcde1/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25796e53a1b03491c0581d8378f1361732aefe6136a225789f4960c5e12d13eb"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-112710-87fcde1/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53b6f499a6babe7a9f5614f4c62738411c970dd9fefdbd185b3ddee3040af781"
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
