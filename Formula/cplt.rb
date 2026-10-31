class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.31-194043-5a954b6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.31-194043-5a954b6/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "00f62351b7385286de638b23c5060b13b666919f5fb92ca9953019eeb8980569"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.31-194043-5a954b6/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "35899204a1319551ae46f2637a14f0b2250aed9677ad527be7b68fa556db967f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.31-194043-5a954b6/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea542695f9bbf95f65dc465e98d36411f990be8f8182a76bbc42bd7ee7496f20"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.31-194043-5a954b6/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2107053ffd1d61df3693f4a08eef656b0acefbb186f97502fde07219bc8839a"
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
