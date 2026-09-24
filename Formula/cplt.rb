class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.24-153547-4a98de5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-153547-4a98de5/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "19c7b3de449d3ad852950b06eba531efcae1499695d437c19c8af39c47e931da"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-153547-4a98de5/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "eafa39571aba4fc2b0645c949ca714e593e56d7b307dd629a65dc1cd798611d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-153547-4a98de5/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67c367605ac0a3ee9eb925a6e6c61ec8b27521f75d2593b674858c62bce8b765"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.24-153547-4a98de5/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0c9286d59f5243593a5259bd8953f7e7b96ae721374b0de14911d7eb57a938e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
