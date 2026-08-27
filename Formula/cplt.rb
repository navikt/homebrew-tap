class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.08.27-112423-0d0463a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-112423-0d0463a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a037de74cec9b533093d677389e15ac562ecab07a4e6e4f1468389dc34bea342"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-112423-0d0463a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ca314a74a1cde9212cd60282f9c288ffeb5ec9e169841537064796d4cbf5120b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-112423-0d0463a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7fcf183fe8ad8249cfc0f47daad226f742168cc614aa43a5f2cda6d6ba09538a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.08.27-112423-0d0463a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55a3b9b7bbec828bf6048fa359326f4d0cb0075210def992dc7dfa14bd3b0f6c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
