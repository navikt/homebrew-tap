class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.27-154720-48d556d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-154720-48d556d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "131e2f7321a99049ca4fb10fa98e127b8c0984e4349370d0ce48e29b19d9b0f5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-154720-48d556d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4f999b80732923089adf026d5f7e4700365a069dabb355b20cf0317012594203"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-154720-48d556d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61f71f13824467e769feb8ed028a0583158b40da390ca5a74d2d5890fe9c494d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-154720-48d556d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7492bc91de16f58ec70a64677ee680e12c0754abcf69c803e48b81f9b0772b3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
