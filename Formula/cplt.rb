class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.05-132144-6424a3a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-132144-6424a3a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a48bbbb057f9d5aefaf04ef34138e696f968211d266fa1ba15dc171e08326ae2"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-132144-6424a3a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "472e0b95ad304f45c103544074aef9745451b448e28470c4146e21a9da6a6597"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-132144-6424a3a/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edaecfedb0e7871dfefb20211e66a6b08c5276f0dcf422790dad2e438d6794fe"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-132144-6424a3a/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e55b7133d4bce1e466001a5d7ade61eaba001b12ea270c8621a50a59ad23f305"
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
