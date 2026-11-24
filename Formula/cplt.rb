class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-081522-b451a2b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-081522-b451a2b/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "43598543e011f506d13bb5d0155e3f45bb63bb9bb98127df128a024daad9e363"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-081522-b451a2b/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "93bba3abb03b867b2255489918b7d94d3539649be9c65a6eb03936c994b1230a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-081522-b451a2b/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ccd1d02304c76f17f86549a9dfd1de54e82150ab357fcb412d2bdf064ad417c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-081522-b451a2b/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f16459fda2a2278319edae0672d09eba0e7e85dba6cd3a6d6c59f283a6f56813"
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
