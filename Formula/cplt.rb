class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.04-120433-8bf5e16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-120433-8bf5e16/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1c5239788ac9df88d554552237bd179607070327c6baed9a9ad837618830cb73"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-120433-8bf5e16/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "d224d3e2255dfcff40c750483d78808995ac994ce188e4372cb9b7f7b6ef3fa3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-120433-8bf5e16/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c3b7fbefc2ce6ce454235a1dc6c61156f2b0101b89fd5d37156a9816b8d2656"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-120433-8bf5e16/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8097900b56514a5d31bd95152c013ae3f69f8669004914934791e73a5e2890a"
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
