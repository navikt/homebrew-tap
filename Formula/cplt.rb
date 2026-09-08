class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-173414-c0e7f3d"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-173414-c0e7f3d/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b809a0a58e0b33798aa4be145ca1c167cb84a5989e34f4d856837a1f830fc7db"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-173414-c0e7f3d/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2aba6cc5c5198e25540ceeefa4164859642553a3552646fc3c858ba4568ec0b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-173414-c0e7f3d/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a93a1a318452a2c02a2f7fadd305909ae25688d664157566928cf341fd53dd7b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-173414-c0e7f3d/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e02a872748fde501d802084cbd9af93b4952fee111b3dd1143aa6976bee268e3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
