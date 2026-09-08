class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-103927-913b0ea"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-103927-913b0ea/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "44bb4dc2e00036af39a358246da4909b5737853594f8e802616ec2c30b71f882"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-103927-913b0ea/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7ced962aacf1b18e2f063d2a348ad71c49125bf59db544117ebbbd7c6a6b8786"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-103927-913b0ea/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54159926bcdfa326fd8bf3d3fd0723c6721c2781bffcbd8446970fea130ae1d6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-103927-913b0ea/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cce25c0e5b88813d7ecff44c6cec80f71a2879f6e9f81d4b98b009157ff786c8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
