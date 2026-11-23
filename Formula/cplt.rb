class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.23-183407-3b52b3f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-183407-3b52b3f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "66a61b5e5e968bdf7e6ef1a606d2313992d6e57d4d7e4003bf0f5e339a15264d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-183407-3b52b3f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "ca9795d76fd50f5a965741c6f52e62dbbea18bcc30b3ab315932569fb56bbda4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-183407-3b52b3f/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "91ee67650a76104df124b3f92d0aaaf0723a68a569c5f9d4f7be8513756473be"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.23-183407-3b52b3f/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c2ddbb05a9115f02bad1c5479df9ac54aed3813bd2df15cc0893c609f24f20c5"
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
