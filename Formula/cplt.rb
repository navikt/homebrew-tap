class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.02-223908-6184a79"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-223908-6184a79/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e9fc6db58daaa5f6f3a624bf6f3a456fdd88056c289a37484c579a5f2b844513"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-223908-6184a79/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a97a11d2bac3839920fc9280f8995b9b83ec323a942fba174b31668f97ebc546"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-223908-6184a79/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8af6d110bdeb15deb35dce50b996796007060a7f5c4ef27432ab80e148a8f276"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.02-223908-6184a79/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4cdd0554a606be7def1907ae7ed7e1a3ce8c938026e614714c2411cd1d022804"
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
