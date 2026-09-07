class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.07-095807-bb4fcad"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-095807-bb4fcad/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "63531fd32cbc3b1a820ee69eda196ac79e64ea8163be5ec42240b2cac7a9ee2d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-095807-bb4fcad/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e1aa49ab6dd9b0e6ddeee8e545eea5ae29aa69caa6999299f4edc2dcf810e2a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-095807-bb4fcad/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8883fcba0902c94ca197185c51379988cb1a56cfe191e24d48e4f2f4ee749da0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.07-095807-bb4fcad/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4171cf2e9eca64c2a4b72933cdcb4a3c3aa99320dcf1173776a06bbd5aa59217"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
