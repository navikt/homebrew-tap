class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-065014-15cb9d9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-065014-15cb9d9/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0ca8613e50f785fd88bc24babcc5b25c167c4f60780b40fc15530791d6d09646"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-065014-15cb9d9/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e27461effabd981ea72653ae7a7603babaad3c37a77f97b55856821e7db4ee0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-065014-15cb9d9/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eea1835906afbe59672c575460b1182c064e721decefe82274a34f64d4b439b6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-065014-15cb9d9/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb1478fad9fb5781cc32d3adf55a2180e70f901165806bcd50717cef5fd635d5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
