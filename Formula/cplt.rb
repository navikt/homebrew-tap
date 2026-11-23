class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-210614-c0112b2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-210614-c0112b2/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "36b0008fc630ca3bd823c058136639309b1d2474dc69677b261cb93ebe149d82"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-210614-c0112b2/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "be9f516109f61bde5df21572103e28b7d41bda6376d0ad2a55b5a437c662b3cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-210614-c0112b2/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf4aff672216f72c8c9581848895b5d43c877fa0648ffa92237b2c8ef2248f36"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-210614-c0112b2/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "426c411a5f419d0b01907af9850d2b77bed2beb55e23a807bca0a4176f401eba"
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
