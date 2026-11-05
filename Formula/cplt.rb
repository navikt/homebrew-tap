class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.05-142504-ee90d23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-142504-ee90d23/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c0c8ead5f332b22ebd6e625a0a163b56a7d62417427e8d7e357e4145e49431ac"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-142504-ee90d23/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e7ec5edc52774c3a861d785b7fc88f38408e40343b2131ffae3af85ec43ef276"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-142504-ee90d23/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8edf910c81387350f672a18f111ecac52d99156c8c89f3afc97adca66916e31e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.05-142504-ee90d23/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86cfb8bc21db319cee97d2af6d6961070640be51cd9749aa79e2f3ddebe770d0"
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
