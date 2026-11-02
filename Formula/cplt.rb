class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.02-095723-040412f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-095723-040412f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3706941a44d9e8b21c36c58558285e3d7a5ec5879efa96d9e436c70d7515a9da"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-095723-040412f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c61cf8a30869ca8edc120865f83af4ce00e13009544e5ca7b28c0a7184a56d99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-095723-040412f/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "787ddd1d094c4fa37309f51d58fd6d3f2b5456175df93c165dfb563c0cad79f0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-095723-040412f/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50a54f5f6c8077fc4d49055dbf70a13eae8b6d7b03d1fab9ac0fe740845462b8"
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
