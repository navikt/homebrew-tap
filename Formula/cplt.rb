class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.30-055204-c7ca36b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-055204-c7ca36b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7eb245a79f62aafde2f8301270664234ecae16157f97fe8342754d69c518918a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-055204-c7ca36b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "61a5f82625dcad01b445fc9bae8d6d26660827a1baf8a25f21716e8318a651ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-055204-c7ca36b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52714af462fdc058cf4c743c67190af920237c8e137ec35491850b5cd16e6cbc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.30-055204-c7ca36b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67359c3dc8f4160f75f178a39674d53f079aa8e08930b85790fc8ffb0f9bded0"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
