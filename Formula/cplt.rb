class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.29-145905-cd46f21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-145905-cd46f21/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "50d22d405b426491d943e139ba4a7f416c0d1386378fcfdcfca8979232f2c4fe"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-145905-cd46f21/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1e78a6748bd8927b03742bb9639dcdd9630cd4cd1b486de7578e7386437da51d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-145905-cd46f21/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d84bf39ed7a8fc8db1c9119fdf9b7eabf4b229ed8eca652d816bd00ac1675b00"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.29-145905-cd46f21/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67113c3dfeff469d0dd15bfc07eff6e9a05350afde541069bdfc05b5de19b50e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
