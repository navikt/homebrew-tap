class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.17-082038-13ca27e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-082038-13ca27e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "120d6d0430951407c7e7fab303cd754fd399f01b9d6f2e9524dcf7a20b243236"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-082038-13ca27e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7a4ece5af71c13b5f929a115013553b87c80c0a20cc9018d42631500792756df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-082038-13ca27e/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bfcf0bdf7d82c605c23a1f5c6f2c43e609084daa7a371afaa6850d8a73d09a1e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-082038-13ca27e/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bea80e17645610fe499bd8bdcb4d87d4011d32202bbe9ca51a13460b91743cb1"
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
