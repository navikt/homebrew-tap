class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.04-082924-39919c2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-082924-39919c2/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "76abff37973ebc8c7d1462ee773de9fc1a90e8e9f326f390f584749daaa4ce32"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-082924-39919c2/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "677e255766b44ad7a4fe7dd2be3181151110b2e4fefc55b0a0543800d1e96ab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-082924-39919c2/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83da16fe1d86b21884d1ab5738cad6db4651bc8e05735576fbc10ceb635560b6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.04-082924-39919c2/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4eb58a028090f4d7dd0ab4b984ca50858da97f6104e7261767bb587bac51d52f"
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
