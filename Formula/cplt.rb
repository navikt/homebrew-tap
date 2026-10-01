class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.01-170947-a36e2bf"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.01-170947-a36e2bf/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "38ba601f22d2d4375e4bdfd1e22af7877e4ca8836cb4164dfe522fff7434d178"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.01-170947-a36e2bf/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "227d57c2e00f2f49e92559c62cbdaf059d08eb3fa5500a52f554bfe80f707bac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.01-170947-a36e2bf/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a56175228f796b3ae384f936f6eb6c6744cce1801715f8c14dd7d985944cdfa"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.01-170947-a36e2bf/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10c3b59ff28a5b345231dc2962d7c08e1c84243146f25f379fb05702914ff9c0"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
