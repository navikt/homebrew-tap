class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.20-091504-05c4d2c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-091504-05c4d2c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "8730cb5ad4a73f1a436c0d39b8f926ec4caff18d5c5621d47ac2a96a7794865f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-091504-05c4d2c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "48eba962def3207b4a513c5b255069694c2c9dbe7d687f0735f9ca9ad5fa5027"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-091504-05c4d2c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c7e2bc9e4e46d0b37c5122bd3d2118964509162c799f4e4ce3c4cf759260878"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.20-091504-05c4d2c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "405cf7496b5d098f5f0aaa0008ff0c362401ce643cafc4c4919f869f11dad225"
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
