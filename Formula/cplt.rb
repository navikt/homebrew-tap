class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.23-130113-ef10f89"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-130113-ef10f89/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b9a1f956c435575d2ba693356bcead47c498d7c5bbed5c320b971a6f9b29d538"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-130113-ef10f89/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a0ac4c50ac92ceac8879612d1049fd9b40a083a6a632b9f372fa6073bf13e4a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-130113-ef10f89/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e36c340a384b4a145d744f56fbbb0fc2546fca44d3b367c48e2a269c6b8a9b66"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.23-130113-ef10f89/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9fbeb3f47e9ef30bb12c87f78b770468606e49d22ec95d039b5180c024f6bb5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
