class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.17-205610-807a529"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-205610-807a529/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "02652a5ad900a6be9bdcfff2b8090a5750f212376ffd3baa6ba7e4fad220eb5e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-205610-807a529/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "09f428dae1205506213aee4e0efa7a3c993976e16b981d5bb61cd681ba15c54f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-205610-807a529/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f732319702de5fe9004670ccd3a3de40d46c97b10a0648d3b35a8bda83557b1e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.17-205610-807a529/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc74e1cbcf02fa4104865883bfdad22511f226c29199ba1a00c80c4db4b32ed6"
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
