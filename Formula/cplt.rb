class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.27-114621-0861682"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-114621-0861682/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "eba245bd3195095a0152bf94172aae8851d19eaf3b3bd402a9766c712b75ca96"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-114621-0861682/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f964357cce5b6d1b4d2adaf02380ad32e8d3c06c4c42ed9e6a92c5e1382ff14a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-114621-0861682/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66fd46af7d12bd8eadaf148a7442f5c87244ac5f8fac626a1835f5116dfde394"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.27-114621-0861682/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c659703bbfcdb4a517490bee6bbb39aa56abf5d7e6422aaeaf7bf3f62b6be52"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
