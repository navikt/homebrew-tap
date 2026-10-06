class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.06-115401-37c9308"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-115401-37c9308/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e8f0cb12b2b2ba993106ca6ce881620077630b2348422875e5631f11f407040c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-115401-37c9308/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4adb90f101bead38a2477ed2f694ee1703e57206d0ff8fb8156a9d96266e984c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-115401-37c9308/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "654e532e9c94ad3b4f5adfd844262561174b1801a76bfbb2b57db6fe8eda11cb"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.06-115401-37c9308/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d94ad0569e5b6fa846125df5d6913fd98da0daf51f78a84fd20b72dff7e5d7f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
