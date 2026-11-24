class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.11.24-001223-ec6f996"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-001223-ec6f996/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0488160b8f35330b5b2fd22cdcb4b7c0156834c0bdc0f018bcefc1bd77d9e85e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-001223-ec6f996/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "68b5e90a34ad4cd86825d52f842f2a652a3a7411e3e254be090357575c6fced2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-001223-ec6f996/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "139c224338dde35cf023ebb9c1cbe58d9b73e5f4ee06576ca34cb585415f774a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.11.24-001223-ec6f996/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30b6ad1afcafcd8c432c7b4af3f0f15892b4db339212bfc575bfd37ed0569e88"
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
