class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.26-103631-5f3d03b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-103631-5f3d03b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "562f1b6d5590251d971b503c89b69b30aa02add0dc4011d62d6f48ce03971a2c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-103631-5f3d03b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c5fd882396764d2c09dfeccf0330528fa1267aab3d6a3f484e0452d712baef11"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-103631-5f3d03b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1faeae8db7196ac0771eb21c3f689407b9de5e7c86e0c05c245192478d4a8fc6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.26-103631-5f3d03b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5c2ba25f120be0ec20fd601fbcf0ba6ba99bcebbed6ce8f5ed5353f7d9d3cc1"
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
