class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-203723-69ad262"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-203723-69ad262/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ffd97260c6e59ad9f9f1fd21eda3daebcd235a31c0c15de89a3886e77d878924"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-203723-69ad262/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ea126e6cf1d388bff7271c5cf402ef0b53e625bc57be1c188840bc86fe2e01fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-203723-69ad262/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75c258981482796c0902c0bcd29409f8b51918f4744e52c557ff42265f866734"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-203723-69ad262/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adbac81fd0ed89caf73edbe7d4998dd8479b923f424fb2bb00dd8d2f450de629"
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
