class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.22-205633-e8f92ee"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.22-205633-e8f92ee/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "65ce9a7063870741bcc8bb971d284abb6d91a22b4678856a3a9eb9e3b52ea544"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.22-205633-e8f92ee/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7d8a2d067d370f1048d415d65bb2ab616912478ac81457172fe928c425c00dce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.22-205633-e8f92ee/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f67ee6e8326c96ec54f6389a1a81ed870811957b16783223973733bec37a647"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.22-205633-e8f92ee/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e6d6549e8950933bd40d5cb9f55d268929f9ed179c172317a863bb4f1d705cb"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
